from django.shortcuts import render

from work.forms import DocumentCreateForm, DocumentEditCancelForm
from work.models import Work


def work_list(request):
    work = Work.objects.all()
    context = {
        'works': work
    }
    return render(request, 'work_list.html', context=context)


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


def work_edit_cancel(request, work_type):
    form = DocumentEditCancelForm()

    if request.method == 'POST':
        work = DocumentEditCancelForm(request.POST).save(commit=False)
        work.type = 'E' if work_type == 'edit' else 'CA'
        work.creator = request.user.employee
        work.save()

    return render(request, 'work_edit_cancel.html', {
        'form': form,
        'work_type': work_type
    })

def work_detail(request, id):
    work = Work.objects.get(pk=id)
    return render(request, template_name='work_detail.html.html', context={
        'work': work
    })