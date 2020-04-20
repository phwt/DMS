from django.contrib.auth.decorators import login_required
from django.shortcuts import render

from DMS.utils import date_plus_today
from work.forms import DocumentCreateForm, DocumentEditCancelForm, WorkFilterForm
from work.models import Work, DelegateUser


@login_required(login_url='login')
def work_list(request):
    if request.method == 'POST':
        filter_form = WorkFilterForm(request.POST)
        works = Work.objects.all() # TODO: Make filter working
    else:
        works = Work.objects.all()
        filter_form = WorkFilterForm()

    context = {
        'works': works,
        'filter_forms': filter_form
    }
    return render(request, 'work_list.html', context=context)


@login_required(login_url='login')
def work_create(request):
    if request.method == 'POST':
        create_form = DocumentCreateForm(request.POST)
        document = create_form.save()
        work = Work(type='CR', state='N', creator=request.user.employee, document=document)
        work.save()
        delegate = DelegateUser(work=work, employee=request.user.employee, deadline=date_plus_today(5))
        delegate.save()
    create_form = DocumentCreateForm()
    return render(request, 'work_create.html', {'form': create_form})


@login_required(login_url='login')
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


@login_required(login_url='login')
def work_detail(request, id):
    work = Work.objects.get(pk=id)
    return render(request, template_name='work_detail.html', context={
        'work': work
    })