from django.contrib.auth.models import User
from django.db import models

from authen.models import Employee


class Document(models.Model):
    name = models.CharField(max_length=50, null=False)
    file_location = models.FileField(upload_to='', null=True)

    def __str__(self):
        return self.name


class InternalDoc(Document):
    version = models.IntegerField(null=False)
    running_no = models.IntegerField(null=False)
    TYPES = [
        ('M', 'Manual'),
        ('P', 'Procedure'),
        ('W', 'Work Instruction'),
        ('F', 'Record Form'),
    ]
    type = models.CharField(
        max_length=1,
        choices=TYPES,
        null=False,
    )
    STATES = [
        ('IN', 'In-Progress'),
        ('RE', 'Released'),
        ('OB', 'Obsoleted'),
        ('RC', 'Recalled'),
    ]
    state = models.CharField(
        max_length=2,
        choices=STATES,
        null=False,
        default='IN'
    )
    parent_doc = models.ForeignKey('self', on_delete=models.CASCADE, null=True)


class ExternalDoc(Document):
    source = models.TextField(null=False)
    detail = models.TextField(null=True)
    create_date = models.DateTimeField(auto_now_add=True)
    creator = models.ForeignKey(Employee, on_delete=models.CASCADE, null=False)

