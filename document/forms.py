from datetime import datetime

from django.forms import ModelForm, TextInput, DateTimeField, CharField, NumberInput, Select, Textarea, FileInput

from DMS.utils import all_field_required_false, apply_class_to_fields
from document.models import ExternalDoc, InternalDoc


class ExternalDocForm(ModelForm):
    class Meta:
        model = ExternalDoc
        fields = ['name', 'source', 'detail', 'file_location']
        widgets = {
            'source': TextInput()
        }

    def __init__(self, *args, **kwargs):
        super(ExternalDocForm, self).__init__(*args, **kwargs)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


class ExternalDocFilterForm(ModelForm):
    class Meta:
        model = ExternalDoc
        fields = ['name', 'source', 'detail']
        widgets = {
            'source': TextInput(),
            'detail': TextInput(),
        }

    def __init__(self, *args, **kwargs):
        super(ExternalDocFilterForm, self).__init__(*args, **kwargs)
        all_field_required_false(self.fields)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')


class InternalDocFilterForm(ModelForm):
    # created_start = DateTimeField()
    # created_end = DateTimeField()
    released_start = DateTimeField(
        initial='1970-01-01T00:00',
        input_formats=('%Y-%m-%dT%H:%M',)
    )
    released_end = DateTimeField(
        initial=datetime.now().strftime('%Y-%m-%dT%H:%M'),
        input_formats=('%Y-%m-%dT%H:%M',)
    )
    # parent_doc_name = CharField()

    class Meta:
        model = InternalDoc
        exclude = ['file_location', 'release_date', 'create_date']

    def __init__(self, *args, **kwargs):
        super(InternalDocFilterForm, self).__init__(*args, **kwargs)
        all_field_required_false(self.fields)
        apply_class_to_fields(self.fields, 'form-control form-control-sm')
