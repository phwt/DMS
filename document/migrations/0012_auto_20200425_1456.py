# Generated by Django 3.0.5 on 2020-04-25 07:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('document', '0011_auto_20200422_2045'),
    ]

    operations = [
        migrations.AlterField(
            model_name='document',
            name='file_location',
            field=models.FileField(db_index=True, null=True, upload_to=''),
        ),
        migrations.AlterField(
            model_name='document',
            name='name',
            field=models.CharField(db_index=True, max_length=50),
        ),
        migrations.AlterField(
            model_name='internaldoc',
            name='running_no',
            field=models.IntegerField(db_index=True),
        ),
        migrations.AlterField(
            model_name='internaldoc',
            name='state',
            field=models.CharField(choices=[('IN', 'In-Progress'), ('RE', 'Released'), ('OB', 'Obsoleted'), ('RC', 'Recalled')], db_index=True, default='IN', max_length=2),
        ),
        migrations.AlterField(
            model_name='internaldoc',
            name='type',
            field=models.CharField(choices=[('M', 'Manual'), ('P', 'Procedure'), ('W', 'Work Instruction'), ('F', 'Record Form')], db_index=True, max_length=1),
        ),
        migrations.AlterField(
            model_name='internaldoc',
            name='version',
            field=models.IntegerField(db_index=True),
        ),
    ]