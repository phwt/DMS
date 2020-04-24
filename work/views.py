from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models import F, Q
from django.db.models.functions import Coalesce
from django.shortcuts import render, redirect

from DMS.utils import date_plus_today, pass_delegate, get_employees_in_groups_tuple, pass_delegate_review, \
    pass_delegate_approve
from document.models import Document, InternalDoc
from work.forms import DocumentCreateForm, WorkFilterForm, DocumentSubmitForm, \
    DocumentReviewForm, DocumentApproveForm, DocumentCancelForm, DocumentEditForm
from work.models import Work, DelegateUser


@login_required(login_url='login')
def work_list(request):
    work_list = Work.objects.all().order_by('-id')
    if request.method == 'GET':
        filter_form = WorkFilterForm(request.GET)
        if filter_form.is_valid():
            if filter_form.cleaned_data['document'] is not None:
                work_list = work_list.filter(document=filter_form.cleaned_data['document'])

            if filter_form.cleaned_data['type'] is not '':
                work_list = work_list.filter(type=filter_form.cleaned_data['type'])

            if filter_form.cleaned_data['state'] is not '':
                work_list = work_list.filter(state=filter_form.cleaned_data['state'])

            if filter_form.cleaned_data['employee'] is not None:
                work_list = work_list.filter(latest_delegate=filter_form.cleaned_data['employee'])
    else:
        filter_form = WorkFilterForm()

    page = request.GET.get('page', 1)
    paginator = Paginator(work_list, 10)
    try:
        works = paginator.page(page)
    except PageNotAnInteger:
        works = paginator.page(1)
    except EmptyPage:
        works = paginator.page(paginator.num_pages)

    context = {
        'works': works,
        'filter_forms': filter_form
    }
    return render(request, 'work_list.html', context=context)


@login_required(login_url='login')
def work_create(request):
    if request.method == 'POST':
        create_form = DocumentCreateForm(request.POST)
        document = create_form.save(commit=False)
        document.creator = request.user.employee
        document.save()
        work = Work(
            type='CR',
            state='N',
            creator=request.user.employee,
            document=document,
            latest_delegate=request.user.employee
        )
        work.save()
        delegate = DelegateUser(work=work, employee=request.user.employee, deadline=date_plus_today(5))
        delegate.save()
        return redirect('work_detail', id=work.id)
    create_form = DocumentCreateForm()
    return render(request, 'work_create.html', {'form': create_form})


@login_required(login_url='login')
def work_edit(request):
    form = DocumentEditForm()
    if request.method == 'POST':
        request_form = DocumentEditForm(request.POST)
        if request_form.is_valid():
            new_doc = InternalDoc(
                name=request_form.cleaned_data['requested_document'].name,
                version=request_form.cleaned_data['requested_document'].version + 1,
                running_no=request_form.cleaned_data['requested_document'].running_no,
                type=request_form.cleaned_data['requested_document'].type,
                state='IN',
                creator=request.user.employee,
                parent_doc=request_form.cleaned_data['requested_document'].parent_doc
            )
            new_doc.save()
            work = Work(
                type='E',
                state='N',
                detail=request_form.cleaned_data['detail'],
                document=request_form.cleaned_data['requested_document'],
                creator=request.user.employee,
                latest_delegate=request.user.employee,
                new_document=new_doc
            )
            work.save()
            delegate_user = DelegateUser(
                work=work,
                employee=work.latest_delegate,
                deadline=date_plus_today(5),
            )
            delegate_user.save()
            return redirect('work_detail', id=work.id)

    return render(request, 'work_edit_cancel.html', {
        'form': form,
        'work_type': 'edit'
    })


@login_required(login_url='login')
def work_cancel(request):
    form = DocumentCancelForm()
    if request.method == 'POST':
        request_form = DocumentCancelForm(request.POST)
        if request_form.is_valid():
            work = Work(
                type='CA',
                state='DCC',
                detail=request_form.cleaned_data['detail'],
                document=request_form.cleaned_data['requested_document'],
                creator=request.user.employee,
                latest_delegate=request_form.cleaned_data['delegate_user'].employee
            )
            work.save()
            delegate_user = DelegateUser(
                work=work,
                employee=work.latest_delegate,
                deadline=date_plus_today(5),
            )
            delegate_user.save()
            return redirect('work_detail', id=work.id)

    return render(request, 'work_edit_cancel.html', {
        'form': form,
        'work_type': 'cancel'
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
                if work.type == 'E':
                    work.new_document.file_location = submit_form.cleaned_data['file']
                    work.new_document.save()
                else:
                    work.document.file_location = submit_form.cleaned_data['file']
                    work.document.save()
                pass_delegate(work, 'DCC', submit_form)
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
        # if delegate_user[0].employee == request.user.employee:
        if True:
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
