from django.forms import ModelForm

from document.models import InternalDoc
from work.models import Work


class DocumentCreateForm(ModelForm):
    class Meta:
        model = InternalDoc
        exclude = ['file_location', 'state']

    def __init__(self, *args, **kwargs):
        super(DocumentCreateForm, self).__init__(*args, **kwargs)
        self.fields['parent_doc'].required = False


class DocumentEditCancelForm(ModelForm):
    class Meta:
        model = Work
        fields = ['document', 'detail']