from django.shortcuts import render

from work.forms import DocumentCreateForm
from work.models import Work


def work_list(request):
    # work = Work.objects.all()
    # context = {
    #     'works': work
    # }
    return render(request, 'work_list.html')


def work_detail(request):
    return None


def work_create(request):

    if request.method == 'POST':
        create_form = DocumentCreateForm(request.POST)
        document = create_form.save()
        work = Work(type='CR', state='N', creator=request.user.employee, document=document)
        work.save()
    create_form = DocumentCreateForm()
    return render(request, 'work_create.html', {'form': create_form})


def work_edit_cancel(request):
    return None