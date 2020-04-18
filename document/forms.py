from django.forms import ModelForm, TextInput, DateTimeField, CharField

from document.models import ExternalDoc, InternalDoc


class ExternalDocForm(ModelForm):
    class Meta:
        model = ExternalDoc
        fields = ['name', 'source', 'detail', 'file_location']


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


class InternalDocFilterForm(ModelForm):
    created_start = DateTimeField()
    created_end = DateTimeField()
    released_start = DateTimeField()
    released_end = DateTimeField()
    parent_doc_name = CharField()

    class Meta:
        model = InternalDoc
        exclude = ['file_location', 'release_date', 'create_date', 'parent_doc']

    def __init__(self, *args, **kwargs):
        super(InternalDocFilterForm, self).__init__(*args, **kwargs)
        all_field_required_false(self.fields)


def all_field_required_false(fields):
    for field in fields:
        fields[field].required = False
