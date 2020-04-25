from django.db import models
from django.contrib.auth.models import User


class Department(models.Model):
    name = models.CharField(max_length=50, null=False, db_index=True)
    abbreviation = models.CharField(max_length=2, null=False, db_index=True)

    def __str__(self):
        return self.name


class Employee(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, db_index=True)
    department = models.ForeignKey(to=Department, on_delete=models.CASCADE, null=False, db_index=True)

    def __str__(self):
        return f'{self.user.first_name} {self.user.last_name}'
