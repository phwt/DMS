from django.db import models
from document.models import InternalDoc
from authen.models import Employee


class DelegateUser(models.Model):
    users = models.ManyToManyField(Employee, through='Work')
    result = models.BooleanField()
    review_date = models.DateTimeField()


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
    employees = models.ForeignKey(Employee, on_delete=models.CASCADE)
    delegate_user = models.ForeignKey(DelegateUser, on_delete=models.CASCADE)
