import datetime as dt
from datetime import datetime

from authen.models import Employee
from work.models import DelegateUser


def all_field_required_false(fields):
    for field in fields:
        fields[field].required = False


def apply_class_to_fields(fields, classes):
    for field in fields:
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
        complete_work(work, 'RC')


def pass_delegate_approve(work, form_data):
    current_delegate = work.delegateuser_set.get(completed=False)
    current_delegate.completed = True
    current_delegate.save()

    if form_data.cleaned_data['result']:  # Review result is true (passed)
        complete_work(work, 'RE')
    else:
        complete_work(work, 'RC')


def get_employees_in_groups_tuple(group_name):
    return [(i.id, i) for i in Employee.objects.filter(user__groups__name=group_name)]