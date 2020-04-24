import datetime as dt
from datetime import datetime

from authen.models import Employee
from work.models import DelegateUser
from django.db.models import Case, CharField, Value, When


def all_field_required_false(fields):
    for field in fields:
        fields[field].required = False


def apply_class_to_fields(fields, classes, exclude=[]):
    for field in fields:
        if field not in exclude:
            fields[field].widget.attrs.update({'class': classes})


def date_plus_today(how_many):
    return datetime.now() + dt.timedelta(days=how_many)


def complete_work(work, document_state):
    work.state = 'C'
    work.document.state = document_state
    work.complete_date = datetime.now()
    work.latest_delegate = None
    work.save()
    work.document.save()


def pass_delegate(work, state, form_data):
    current_delegate = work.delegateuser_set.get(completed=False)
    current_delegate.completed = True
    current_delegate.save()

    work.latest_delegate = Employee.objects.get(pk=form_data.cleaned_data['delegate_user'])
    work.state = state
    work.save()

    new_delegate = DelegateUser(
        work=work,
        employee=Employee.objects.get(pk=form_data.cleaned_data['delegate_user']),
        deadline=date_plus_today(5)
    )
    new_delegate.save()


def pass_delegate_review(work, state, form_data):
    current_delegate = work.delegateuser_set.get(completed=False)
    current_delegate.completed = True
    current_delegate.save()

    if form_data.cleaned_data['result']:  # Review result is true (passed)
        work.latest_delegate = Employee.objects.get(pk=form_data.cleaned_data['delegate_user'])
        work.state = state
        work.save()

        new_delegate = DelegateUser(
            work=work,
            employee=Employee.objects.get(pk=form_data.cleaned_data['delegate_user']),
            deadline=date_plus_today(5)
        )
        new_delegate.save()
    else:
        if work.type == 'CR':
            complete_work(work, 'RC')
        elif work.type in ('CA', 'E'):
            complete_work(work, 'RE')


def pass_delegate_approve(work, form_data):
    current_delegate = work.delegateuser_set.get(completed=False)
    current_delegate.completed = True
    current_delegate.save()

    if form_data.cleaned_data['result']:  # Review result is true (passed)
        if work.type == 'CR':
            complete_work(work, 'RE')
        elif work.type == 'CA':
            complete_work(work, 'OB')
        elif work.type == 'E':
            work.state = 'C'
            work.complete_date = datetime.now()
            work.latest_delegate = None
            work.document.state = 'OB'
            work.document.save()
            work.new_document.state = 'RE'
            work.new_document.save()
    else:
        if work.type == 'CR':
            complete_work(work, 'RC')
        elif work.type == 'CA':
            complete_work(work, 'RE')
        elif work.type == 'E':
            work.state = 'C'
            work.complete_date = datetime.now()
            work.latest_delegate = None
            work.new_document.state = 'OB'  # Obsolete the unapproved edit
            work.new_document.save()


def get_employees_in_groups_tuple(group_name):
    return [(i.id, i) for i in Employee.objects.filter(user__groups__name=group_name)]


class WithChoices(Case):
    """
    https://stackoverflow.com/a/60158573/
    """
    def __init__(self, model, field, condition=None, then=None, **lookups):
        choices = dict(model._meta.get_field(field).flatchoices)
        whens = [When(**{field: k, 'then': Value(v)}) for k, v in choices.items()]
        return super().__init__(*whens, output_field=CharField())