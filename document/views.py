from datetime import datetime

from .models import Document, InternalDoc, ExternalDoc
from .forms import ExternalDocForm, ExternalDocFilterForm, InternalDocFilterForm
from django.shortcuts import redirect, render


def index(request):
    return render(request, 'index.html')


def document_list(request, doc_type):
    if request.method == 'POST':
        if doc_type == 'external':
            filter_forms = ExternalDocFilterForm(request.POST)
            if filter_forms.is_valid():
                documents = ExternalDoc.objects.filter(
                    name__icontains=filter_forms.cleaned_data['name'],
                    source__icontains=filter_forms.cleaned_data['source'],
                    detail__icontains=filter_forms.cleaned_data['detail'],
                )
        elif doc_type == 'internal':
            filter_forms = InternalDocFilterForm(request.POST)
            if filter_forms.is_valid():
                documents = InternalDoc.objects.filter(
                    name__icontains=filter_forms.cleaned_data['name'],
                    # version__range=(filter_forms.cleaned_data['version'], filter_forms.cleaned_data['version']),
                    # running_no__exact=filter_forms.cleaned_data['running_no'],
                    # create_date__range=(
                    #     filter_forms.cleaned_data['created_start'],
                    #     filter_forms.cleaned_data['created_end']
                    # ),
                    release_date__range=(
                        filter_forms.cleaned_data['released_start'],
                        filter_forms.cleaned_data['released_end']
                    ),
                )

                if filter_forms.cleaned_data['parent_doc_name'] != '':
                    documents.filter(parent_doc__name__icontains=filter_forms.cleaned_data['parent_doc_name'])

                if filter_forms.cleaned_data['type'] != '':
                    documents.filter(type__exact=filter_forms.cleaned_data['type'])

                if filter_forms.cleaned_data['status'] != '':
                    documents.filter(status__exact=filter_forms.cleaned_data['status'])

    else:
        if doc_type == 'internal':
            documents = InternalDoc.objects.all()
            filter_forms = InternalDocFilterForm()
        elif doc_type == 'external':
            documents = ExternalDoc.objects.all()
            filter_forms = ExternalDocFilterForm()
    context = {
        'documents': documents,
        'doc_type': doc_type,
        'filter_forms': filter_forms
    }
    return render(request, 'document_list.html', context=context)


def internal_detail(request, id):
    doc = InternalDoc.objects.get(document_ptr_id=id)
    return render(request, template_name='internal_detail.html', context={
        'doc': doc
    })


def external_detail(request, id):
    doc = ExternalDoc.objects.get(document_ptr_id=id)
    return render(request, template_name='external_detail.html', context={
        'doc': doc
    })


def external_add(request):
    if request.method == 'POST':
        form = ExternalDocForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
    return render(request, 'external_add.html', {'form': ExternalDocForm()})


def parse_html_time(time_string):
    return datetime.strptime(time_string, '%Y-%m-%dT%H:%M')
