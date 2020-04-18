from django.db import models


class Document(models.Model):
    name = models.CharField(max_length=50, null=False)
    file_location = models.FileField(upload_to='', null=True)


class InternalDoc(Document):
    version = models.IntegerField(null=False)
    running_no = models.IntegerField(null=False)
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
        ('IN', 'In-Progress'),
        ('RE', 'Released'),
        ('OB', 'Obsoleted'),
        ('RC', 'Recalled'),
    ]
    status = models.CharField(
        max_length=2,
        choices=STATUS_CHOICE,
        null=False,
    )
    parent_doc = models.ForeignKey('self', on_delete=models.CASCADE, null=True)


class ExternalDoc(Document):
    source = models.TextField(null=False)
    detail = models.TextField(null=False)
    create_date = models.DateTimeField(auto_now_add=True)
    # creator = REF USER

