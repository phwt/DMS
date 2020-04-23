# Generated by Django 3.0.5 on 2020-04-20 13:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('work', '0006_work_detail'),
    ]

    operations = [
        migrations.RenameField(
            model_name='delegateuser',
            old_name='review_date',
            new_name='deadline',
        ),
        migrations.AlterField(
            model_name='work',
            name='state',
            field=models.CharField(choices=[('N', 'New'), ('DCC', 'DCC Review'), ('MR', 'MR Review'), ('VP', 'VP Review'), ('SVP', 'SVP Review'), ('C', 'Completed')], default='N', max_length=3),
        ),
    ]
