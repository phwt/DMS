from django.db import models
from django.contrib.auth.models import User


class Department(models.Model):
    name = models.CharField(max_length=50, null=False)


class Employee(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    ROLES = [
        ('EMP', 'Employee'),
        ('DCC', 'Document Control Clerk'),
        ('MR', 'Management Representative'),
        ('VP', 'Vice President'),
        ('SVP', 'Senior Vice President'),
    ]
    role = models.CharField(max_length=3, choices=ROLES, null=False, default='EMP')
    department = models.ForeignKey(to=Department, on_delete=models.CASCADE, null=False)
