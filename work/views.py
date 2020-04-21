from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect

from DMS.utils import date_plus_today, pass_delegate, get_employees_in_groups_tuple, pass_delegate_review, \
    pass_delegate_approve
from work.forms import DocumentCreateForm, DocumentEditCancelForm, WorkFilterForm, DocumentSubmitForm, \
    DocumentReviewForm, DocumentApproveForm
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
        return redirect('work_detail', id=work.id)
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
    delegate_user = work.employees.through.objects.filter(completed=False, work=work)

    if request.method == 'POST':
        if work.state == 'N':
            submit_form = DocumentSubmitForm(request.POST, request.FILES)
            submit_form.fields['delegate_user'].choices = get_employees_in_groups_tuple('DCC')
            if submit_form.is_valid():
                work.document.file_location = submit_form.cleaned_data['file']
                pass_delegate(work, 'DCC', submit_form)
                work.document.save()
        elif work.state == 'DCC':
            submit_form = DocumentReviewForm(request.POST)
            submit_form.fields['delegate_user'].choices = get_employees_in_groups_tuple('MR')
            if submit_form.is_valid():
                pass_delegate_review(work, 'MR', submit_form)
        elif work.state == 'MR':
            submit_form = DocumentReviewForm(request.POST)
            submit_form.fields['delegate_user'].choices = get_employees_in_groups_tuple('VP')
            if submit_form.is_valid():
                pass_delegate_review(work, 'VP', submit_form)
        elif work.state == 'VP':
            submit_form = DocumentReviewForm(request.POST)
            submit_form.fields['delegate_user'].choices = get_employees_in_groups_tuple('SVP')
            if submit_form.is_valid():
                pass_delegate_review(work, 'SVP', submit_form)
        elif work.state == 'SVP':
            submit_form = DocumentApproveForm(request.POST)
            if submit_form.is_valid():
                pass_delegate_approve(work, submit_form)

    action_form = None
    try:
        if delegate_user[0].employee == request.user.employee:
            if work.state == 'N':
                action_form = DocumentSubmitForm()
                action_form.fields['delegate_user'].choices = get_employees_in_groups_tuple('DCC')
            elif work.state == 'DCC':
                action_form = DocumentReviewForm()
                action_form.fields['delegate_user'].choices = get_employees_in_groups_tuple('MR')
            elif work.state == 'MR':
                action_form = DocumentReviewForm()
                action_form.fields['delegate_user'].choices = get_employees_in_groups_tuple('VP')
            elif work.state == 'VP':
                action_form = DocumentReviewForm()
                action_form.fields['delegate_user'].choices = get_employees_in_groups_tuple('SVP')
            elif work.state == 'SVP':
                action_form = DocumentApproveForm()
            delegate_name = delegate_user[0].employee
    except IndexError:
        delegate_name = '-'

    return render(request, template_name='work_detail.html', context={
        'work': work,
        'action_form': action_form,
        'delegate_user': delegate_name
    })