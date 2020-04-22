from datetime import datetime

from django import forms

from DMS.utils import all_field_required_false, apply_class_to_fields
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


class ExternalDocFilterForm(forms.ModelForm):
    class Meta:
        model = ExternalDoc
        fields = ['name', 'source', 'detail']
        widgets = {
            'source': forms.TextInput(),
            'detail': forms.TextInput(),
        }

    def __init__(self, *args, **kwargs):
        super(ExternalDocFilterForm, self).__init__(*args, **kwargs)
        all_field_required_false(self.fields)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


# class InternalDocFilterForm(forms.ModelForm):
#     # created_start = DateTimeField()
#     # created_end = DateTimeField()
#     released_start = forms.DateTimeField(
#         initial='1970-01-01T00:00',
#         input_formats=('%Y-%m-%dT%H:%M',)
#     )
#     released_end = forms.DateTimeField(
#         initial=datetime.now().strftime('%Y-%m-%dT%H:%M'),
#         input_formats=('%Y-%m-%dT%H:%M',)
#     )
#     # parent_doc_name = CharField()
#
#     class Meta:
#         model = InternalDoc
#         exclude = ['file_location', 'release_date', 'create_date']
#
#     def __init__(self, *args, **kwargs):
#         super(InternalDocFilterForm, self).__init__(*args, **kwargs)
#         all_field_required_false(self.fields)
#         apply_class_to_fields(self.fields, 'form-control form-control-sm')


class InternalDocFilterForm(forms.Form):
    name = forms.CharField()
    version = forms.IntegerField()
    running_no = forms.IntegerField()
    type = forms.ChoiceField(choices=[('', '----')]+InternalDoc.TYPES)
    state = forms.ChoiceField(choices=[('', '----')]+InternalDoc.STATES)
    parent_doc = forms.ModelChoiceField(queryset=InternalDoc.objects.all())

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