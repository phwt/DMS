from django.forms import ModelForm, TextInput, DateTimeField, CharField, NumberInput, Select, Textarea
from django import forms

from DMS.utils import all_field_required_false, apply_class_to_fields
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


class WorkFilterForm(ModelForm):
    class Meta:
        model = Work
        exclude = ['detail', 'creator', 'employees']

    def __init__(self, *args, **kwargs):
        super(WorkFilterForm, self).__init__(*args, **kwargs)
        all_field_required_false(self.fields)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


class DocumentSubmitForm(forms.Form):
    file = forms.FileField()
    delegate_user = forms.ChoiceField()


class DocumentReviewForm(forms.Form):
    result = forms.BooleanField(required=False)
    delegate_user = forms.ChoiceField()


class DocumentApproveForm(forms.Form):
    result = forms.BooleanField(required=False)
