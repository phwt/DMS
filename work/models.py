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
        ('DCC', 'DCC Review'),
        ('MR', 'MR Review'),
        ('VP', 'VP Review'),
        ('SVP', 'SVP Review'),
        ('C', 'Completed'),
    ]
    state = models.CharField(
        max_length=3,
        choices=STATES,
        null=False,
        default='N'
    )
    detail = models.TextField(blank=True)
    create_date = models.DateTimeField(auto_now_add=True)
    complete_date = models.DateTimeField(null=True)
    document = models.ForeignKey(InternalDoc, on_delete=models.CASCADE, null=False)
    creator = models.ForeignKey(Employee, on_delete=models.CASCADE, null=False)
    latest_delegate = models.ForeignKey(Employee, on_delete=models.CASCADE, related_name='latest_delegate', null=True)
    employees = models.ManyToManyField('authen.Employee', through='DelegateUser', related_name='works')

    def __str__(self):
        # return f'{self.get_type_display()} - {self.document.name}'
        return self.document.name


class DelegateUser(models.Model):
    work = models.ForeignKey(Work, on_delete=models.CASCADE)
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    result = models.BooleanField(null=True)
    deadline = models.DateTimeField()
    completed = models.BooleanField(default=False)