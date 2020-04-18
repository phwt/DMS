from django.forms import ModelForm, TextInput

from document.models import ExternalDoc


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

    def save(self, commit=True):
        pass  # Disable save features