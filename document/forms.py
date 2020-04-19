from datetime import datetime, date

from django.forms import ModelForm, TextInput, DateTimeField, CharField, NumberInput, Select, Textarea, FileInput

from document.models import ExternalDoc, InternalDoc


class ExternalDocForm(ModelForm):
    class Meta:
        model = ExternalDoc
        fields = ['name', 'source', 'detail', 'file_location']
        widgets = {
            'name': TextInput(attrs={'class': 'form-control form-control-sm'}),
            'source': Textarea(attrs={'class': 'form-control form-control-sm'}),
            'detail': Textarea(attrs={'class': 'form-control form-control-sm'}),
            'file_location': FileInput(attrs={'class': 'form-control form-control-sm'}),
        }


class ExternalDocFilterForm(ModelForm):
    class Meta:
        model = ExternalDoc
        fields = ['name', 'source', 'detail']
        widgets = {
            'name': TextInput(attrs={'class': 'form-control form-control-sm'}),
            'source': TextInput(attrs={'class': 'form-control form-control-sm'}),
            'detail': TextInput(attrs={'class': 'form-control form-control-sm '}),
        }

    def __init__(self, *args, **kwargs):
        super(ExternalDocFilterForm, self).__init__(*args, **kwargs)
        all_field_required_false(self.fields)


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
    parent_doc_name = CharField()

    # created_start.widget.attrs.update({'class': 'form-control form-control-sm'})
    # created_end.widget.attrs.update({'class': 'form-control form-control-sm'})
    released_start.widget.attrs.update({'class': 'form-control form-control-sm'})
    released_end.widget.attrs.update({'class': 'form-control form-control-sm'})
    parent_doc_name.widget.attrs.update({'class': 'form-control form-control-sm'})

    class Meta:
        model = InternalDoc
        exclude = ['file_location', 'release_date', 'create_date', 'parent_doc']
        widgets = {
            'name': TextInput(attrs={'class': 'form-control form-control-sm'}),
            'version': NumberInput(attrs={'class': 'form-control form-control-sm'}),
            'running_no': NumberInput(attrs={'class': 'form-control form-control-sm'}),
            'type': Select(attrs={'class': 'form-control form-control-sm'}),
            'status': Select(attrs={'class': 'form-control form-control-sm'}),
        }

    def __init__(self, *args, **kwargs):
        super(InternalDocFilterForm, self).__init__(*args, **kwargs)
        all_field_required_false(self.fields)


def all_field_required_false(fields):
    for field in fields:
        fields[field].required = False
