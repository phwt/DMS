# Generated by Django 3.0.5 on 2020-04-19 07:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('work', '0003_auto_20200419_1409'),
    ]

    operations = [
        migrations.RenameField(
            model_name='delegateuser',
            old_name='employee_id',
            new_name='employee',
        ),
        migrations.RenameField(
            model_name='delegateuser',
            old_name='work_id',
            new_name='work',
        ),
        migrations.AlterField(
            model_name='delegateuser',
            name='result',
            field=models.BooleanField(null=True),
        ),
    ]
