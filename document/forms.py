from datetime import datetime

from django import forms

from DMS.utils import all_field_required_false, apply_class_to_fields
from authen.models import Employee, Department
from document.models import ExternalDoc, InternalDoc


class ExternalDocForm(forms.ModelForm):
    class Meta:
        model = ExternalDoc
        fields = ['name', 'source', 'detail', 'file_location']
        widgets = {
            'source': forms.TextInput()
        }

    def __init__(self, *args, **kwargs):
        super(ExternalDocForm, self).__init__(*args, **kwargs)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


class ExternalDocFilterForm(forms.Form):
    name = forms.CharField()
    source = forms.CharField()
    creator = forms.ModelChoiceField(queryset=Employee.objects.all())

    def __init__(self, *args, **kwargs):
        super(ExternalDocFilterForm, self).__init__(*args, **kwargs)
        all_field_required_false(self.fields)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


class InternalDocFilterForm(forms.Form):
    name = forms.CharField()
    version = forms.IntegerField()
    running_no = forms.IntegerField()
    type = forms.ChoiceField(choices=[('', '----')]+InternalDoc.TYPES)
    state = forms.ChoiceField(choices=[('', '----')]+InternalDoc.STATES)
    parent_doc = forms.ModelChoiceField(queryset=InternalDoc.objects.all())
    department = forms.ModelChoiceField(queryset=Department.objects.all())
    creator = forms.ModelChoiceField(queryset=Employee.objects.all())

    def __init__(self, *args, **kwargs):
        super(InternalDocFilterForm, self).__init__(*args, **kwargs)
        all_field_required_false(self.fields)
        apply_class_to_fields(self.fields, 'form-control form-control-sm', exclude=['parent_doc'])

    select_option = {
        'class': 'form-control form-control-sm selectpicker',
        'data-live-search': 'true',
        'data-style': 'form-control border'
    }

    parent_doc.widget.attrs.update(select_option)