from django.contrib.auth.models import User
from django.forms import ModelForm, TextInput, DateTimeField, CharField, NumberInput, Select, Textarea, ChoiceField, \
    ModelChoiceField
from django import forms

from DMS.utils import all_field_required_false, apply_class_to_fields
from authen.models import Employee
from document.models import InternalDoc
from work.models import Work


class DocumentCreateForm(ModelForm):
    class Meta:
        model = InternalDoc
        exclude = ['file_location', 'state', 'creator']

    def __init__(self, *args, **kwargs):
        super(DocumentCreateForm, self).__init__(*args, **kwargs)
        self.fields['parent_doc'].required = False
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


class DocumentCancelForm(forms.Form):
    requested_document = forms.ModelChoiceField(queryset=InternalDoc.objects.filter(state='RE'))
    detail = forms.CharField(widget=Textarea())
    delegate_user = forms.ModelChoiceField(queryset=User.objects.filter(groups__name='DCC'))

    def __init__(self, *args, **kwargs):
        super(DocumentCancelForm, self).__init__(*args, **kwargs)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


class DocumentEditForm(forms.Form):
    requested_document = forms.ModelChoiceField(queryset=InternalDoc.objects.filter(state='RE'))
    detail = forms.CharField(widget=Textarea())

    def __init__(self, *args, **kwargs):
        super(DocumentEditForm, self).__init__(*args, **kwargs)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


class WorkFilterForm(forms.Form):
    document = forms.ModelChoiceField(queryset=InternalDoc.objects.all())
    type = forms.ChoiceField(choices=[('', '----')]+Work.TYPES)
    state = forms.ChoiceField(choices=[('', '----')]+Work.STATES)
    employee = forms.ModelChoiceField(queryset=Employee.objects.all())

    def __init__(self, *args, **kwargs):
        super(WorkFilterForm, self).__init__(*args, **kwargs)
        all_field_required_false(self.fields)
        apply_class_to_fields(self.fields, 'form-control form-control-sm', exclude=['document', 'employee'])

    select_option = {
        'class': 'form-control form-control-sm form-control-sm-select selectpicker',
        'data-live-search': 'true',
        'data-style': 'form-control border'
    }

    document.widget.attrs.update(select_option)
    employee.widget.attrs.update(select_option)


class DocumentSubmitForm(forms.Form):
    file = forms.FileField()
    delegate_user = forms.ChoiceField()

    def __init__(self, *args, **kwargs):
        super(DocumentSubmitForm, self).__init__(*args, **kwargs)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


class DocumentReviewForm(forms.Form):
    approve = forms.BooleanField(required=False)
    delegate_user = forms.ChoiceField()

    def __init__(self, *args, **kwargs):
        super(DocumentReviewForm, self).__init__(*args, **kwargs)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


class DocumentApproveForm(forms.Form):
    approve = forms.BooleanField(required=False)

    def __init__(self, *args, **kwargs):
        super(DocumentApproveForm, self).__init__(*args, **kwargs)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')
