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
        exclude = ['file_location', 'state']

    def __init__(self, *args, **kwargs):
        super(DocumentCreateForm, self).__init__(*args, **kwargs)
        self.fields['parent_doc'].required = False
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


class DocumentEditCancelForm(ModelForm):
    class Meta:
        model = Work
        fields = ['document', 'detail']
        widgets = {
            'document': TextInput(),
            'detail': Textarea(),
        }

    def __init__(self, *args, **kwargs):
        super(DocumentEditCancelForm, self).__init__(*args, **kwargs)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


class WorkFilterForm(forms.Form):
    document = forms.ModelChoiceField(queryset=InternalDoc.objects.all())
    type = forms.ChoiceField(choices=[('', '----')]+Work.TYPES)
    state = forms.ChoiceField(choices=[('', '----')]+Work.STATES)
    employee = forms.ModelChoiceField(queryset=Employee.objects.all())

    def __init__(self, *args, **kwargs):
        super(WorkFilterForm, self).__init__(*args, **kwargs)
        all_field_required_false(self.fields)
        apply_class_to_fields(self.fields, 'form-control form-control-sm selectpicker')

    select_option = {
        'data-live-search': 'true',
        'data-style': 'form-control border'
    }

    document.widget.attrs.update(select_option)
    type.widget.attrs.update(select_option)
    state.widget.attrs.update(select_option)
    employee.widget.attrs.update(select_option)


class DocumentSubmitForm(forms.Form):
    file = forms.FileField()
    delegate_user = forms.ChoiceField()


class DocumentReviewForm(forms.Form):
    result = forms.BooleanField(required=False)
    delegate_user = forms.ChoiceField()


class DocumentApproveForm(forms.Form):
    result = forms.BooleanField(required=False)
