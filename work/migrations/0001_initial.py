# Generated by Django 3.0.5 on 2020-04-18 19:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('authen', '0001_initial'),
        ('document', '0006_auto_20200419_0112'),
    ]

    operations = [
        migrations.CreateModel(
            name='DelegateUser',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('result', models.BooleanField()),
                ('review_date', models.DateTimeField()),
            ],
        ),
        migrations.CreateModel(
            name='Work',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status', models.CharField(choices=[('N', 'New'), ('DCC', 'DCC-review'), ('MR', 'MR-review'), ('VP', 'VP-review'), ('SVP', 'SVP-review'), ('C', 'Completed')], max_length=3)),
                ('complete_date', models.DateTimeField()),
                ('create_date', models.DateTimeField(auto_now_add=True)),
                ('delegate_user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='work.DelegateUser')),
                ('document_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='document.InternalDoc')),
                ('employees', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='authen.Employee')),
            ],
        ),
        migrations.AddField(
            model_name='delegateuser',
            name='users',
            field=models.ManyToManyField(through='work.Work', to='authen.Employee'),
        ),
    ]
