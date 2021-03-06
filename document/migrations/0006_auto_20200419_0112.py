# Generated by Django 3.0.5 on 2020-04-18 18:12

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('document', '0005_document_file_location'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='document',
            name='create_date',
        ),
        migrations.RemoveField(
            model_name='externaldoc',
            name='modify_date',
        ),
        migrations.RemoveField(
            model_name='internaldoc',
            name='release_date',
        ),
        migrations.AddField(
            model_name='externaldoc',
            name='create_date',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='internaldoc',
            name='status',
            field=models.CharField(choices=[('IN', 'In-Progress'), ('RE', 'Released'), ('OB', 'Obsoleted'), ('RC', 'Recalled')], max_length=2),
        ),
    ]
