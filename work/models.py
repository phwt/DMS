from django.db import models
from document.models import InternalDoc

class Work(models.Model):
    STATUS_CHOICE = [
        ('N', 'New'),
        ('DCC', 'DCC-review'),
        ('MR', 'MR-review'),
        ('VP', 'VP-review'),
        ('SVP', 'SVP-review'),
        ('C', 'Completed'),
    ]
    status = models.CharField(
        max_length=3,
        choices=STATUS_CHOICE,
        null=False,
    )
    complete_date = models.DateTimeField()
    create_date = models.DateTimeField(auto_now_add=True)
    document_id = models.ForeignKey(InternalDoc, on_delete=models.CASCADE)

class Department(models.Model):
    name = models.CharField(max_length=50, null=False)

class Contributor(models.Model):
    work_id = models.ManyToManyField(Work, through='Employee')
    employee_id = models.ManyToManyField(Employee, through='Work')

class Delegate_User(models.Model):
    work_id = models.ManyToManyField(Work, through='Employee')
    employee_id = models.ManyToManyField(Employee, through='Work')
    result = models.BooleanField()
    review_date = models.DateTimeField()
