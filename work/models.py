from django.db import models
from document.models import InternalDoc
from authen.models import Employee


class Work(models.Model):
    TYPES = [
        ('CR', 'Create'),
        ('E', 'Edit'),
        ('CA', 'Cancel'),
    ]
    type = models.CharField(
        max_length=2,
        choices=TYPES,
        null=False,
        default='CR'
    )
    STATES = [
        ('N', 'New'),
        ('DCC', 'DCC-review'),
        ('MR', 'MR-review'),
        ('VP', 'VP-review'),
        ('SVP', 'SVP-review'),
        ('C', 'Completed'),
    ]
    state = models.CharField(
        max_length=3,
        choices=STATES,
        null=False,
        default='N'
    )
    create_date = models.DateTimeField(auto_now_add=True)
    complete_date = models.DateTimeField()
    document_id = models.ForeignKey(InternalDoc, on_delete=models.CASCADE)
    creator = models.ForeignKey(Employee, on_delete=models.CASCADE)
    employees = models.ManyToManyField('authen.Employee', through='DelegateUser', related_name='works')


class DelegateUser(models.Model):
    work = models.ForeignKey(Work, on_delete=models.CASCADE)
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    result = models.BooleanField(null=True)
    review_date = models.DateTimeField()
