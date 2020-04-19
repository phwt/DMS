from django.forms import ModelForm, TextInput, DateTimeField, CharField, NumberInput, Select, Textarea

from document.forms import all_field_required_false
from document.models import InternalDoc
from work.models import Work


class DocumentCreateForm(ModelForm):
    class Meta:
        model = InternalDoc
        exclude = ['file_location', 'state']
        widgets = {
            'name': TextInput(attrs={'class': 'form-control form-control-sm'}),
            'version': NumberInput(attrs={'class': 'form-control form-control-sm'}),
            'running_no': NumberInput(attrs={'class': 'form-control form-control-sm'}),
            'type': Select(attrs={'class': 'form-control form-control-sm'}),
            'status': Select(attrs={'class': 'form-control form-control-sm'}),
            'parent_doc': Select(attrs={'class': 'form-control form-control-sm'}),
        }

    def __init__(self, *args, **kwargs):
        super(DocumentCreateForm, self).__init__(*args, **kwargs)
        self.fields['parent_doc'].required = False


class DocumentEditCancelForm(ModelForm):
    class Meta:
        model = Work
        fields = ['document', 'detail']
        widgets = {
            'document': TextInput(attrs={'class': 'form-control form-control-sm'}),
            'detail': Textarea(attrs={'class': 'form-control form-control-sm'}),
        }


class WorkFilterForm(ModelForm):
    class Meta:
        model = Work
        exclude = ['detail', 'creator', 'employees']

    def __init__(self, *args, **kwargs):
        super(WorkFilterForm, self).__init__(*args, **kwargs)
        all_field_required_false(self.fields)
        for field in self.fields:
            self.fields[field].widget.attrs.update({'class': 'form-control form-control-sm'})
