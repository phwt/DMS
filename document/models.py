from django.db import models
from django.forms import ModelForm


class Document(models.Model):
    name = models.CharField(max_length=50, null=False)
    # file_location = models.FileField()
    create_date = models.DateTimeField(auto_now_add=True)


class InternalDoc(Document):
    # document_id = models.OneToOneField(Document, primary_key=True, on_delete=models.CASCADE)
    version = models.IntegerField(null=False)
    running_no = models.IntegerField(null=False)
    release_date = models.DateTimeField(null=True)
    TYPE_CHOICE = [
        ('M', 'Manual'),
        ('P', 'Procedure'),
        ('W', 'Work Instruction'),
        ('F', 'Record Form'),
    ]
    type = models.CharField(
        max_length=1,
        choices=TYPE_CHOICE,
        null=False,
    )
    STATUS_CHOICE = [
        ('I', 'In-Progress'),
        ('R', 'Released'),
        ('O', 'Obsolete'),
    ]
    status = models.CharField(
        max_length=1,
        choices=STATUS_CHOICE,
        null=False,
    )
    parent_doc = models.ForeignKey('self', on_delete=models.CASCADE, null=True)


class ExternalDoc(Document):
    # document_id = models.OneToOneField(Document, primary_key=True, on_delete=models.CASCADE)
    source = models.TextField(null=False)
    detail = models.TextField(null=False)
    modify_date = models.DateTimeField(null=True)


class ExternalDocForm(ModelForm):
    class Meta:
        model = ExternalDoc
        fields = ['name', 'source', 'detail']
