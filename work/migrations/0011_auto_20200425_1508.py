# Generated by Django 3.0.5 on 2020-04-25 08:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('authen', '0006_auto_20200425_1459'),
        ('work', '0010_work_new_document'),
    ]

    operations = [
        migrations.AlterField(
            model_name='delegateuser',
            name='result',
            field=models.BooleanField(db_index=True, null=True),
        ),
        migrations.AlterField(
            model_name='work',
            name='complete_date',
            field=models.DateTimeField(db_index=True, null=True),
        ),
        migrations.AlterField(
            model_name='work',
            name='create_date',
            field=models.DateTimeField(auto_now_add=True, db_index=True),
        ),
        migrations.AlterField(
            model_name='work',
            name='employees',
            field=models.ManyToManyField(db_index=True, related_name='works', through='work.DelegateUser', to='authen.Employee'),
        ),
        migrations.AlterField(
            model_name='work',
            name='state',
            field=models.CharField(choices=[('N', 'New'), ('DCC', 'DCC Review'), ('MR', 'MR Review'), ('VP', 'VP Review'), ('SVP', 'SVP Review'), ('C', 'Completed')], db_index=True, default='N', max_length=3),
        ),
        migrations.AlterField(
            model_name='work',
            name='type',
            field=models.CharField(choices=[('CR', 'Create'), ('E', 'Edit'), ('CA', 'Cancel')], db_index=True, default='CR', max_length=2),
        ),
    ]
