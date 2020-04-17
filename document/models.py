from django.db import models

class Document(models.Model):
    name = models.CharField(max_length=50, null=False)
    # file_location = models.FileField()
    create_date = models.DateTimeField(auto_now_add=True)

class Internal_Doc(models.Model):
    document_id = models.OneToOneField(Document, primary_key=True)
    version = models.IntegerField(null=False)
    running_no = models.IntegerField(null=False)
    release_date = models.DateTimeField(null=True)
    TYPE_CHOICE = [
        ('M', 'Manual'),
        ('P',  'Procedure'),
        ('W', 'Work Instruction'),
        ('F', 'Record Form'),
    ]
    type = models.CharField(
        max_length=1,
        choices=TYPE_CHOICE,
        null=False,
    )
    STAUS_CHOICE = [
        ('i', 'In-Progress'),
        ('r', 'Released'),
        ('o', 'Obsolete'),
    ]
    status = models.CharField(
        max_length=1,
        choices=STAUS_CHOICE,
        null=False,
    )
    parent_doc = models.ForeignKey("self")

class External_Doc(models.Model):
    document_id = models.OneToOneField(Document, primary_key=True)
    source = models.TextField(null=False)
    detail = models.TextField(null=False)
    modify_date = models.DateTimeField(null=True)


