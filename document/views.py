from datetime import datetime

from django.contrib.auth.decorators import login_required

from work.models import Work
from .models import Document, InternalDoc, ExternalDoc
from .forms import ExternalDocForm, ExternalDocFilterForm, InternalDocFilterForm
from django.shortcuts import redirect, render


@login_required(login_url='login')
def index(request):
    works = Work.objects.all().order_by('-id')[:10]
    internal = InternalDoc.objects.all().order_by('-id')[:10]
    context = {
        'works': works,
        'documents': internal
    }
    return render(request, 'index.html', context=context)

@login_required(login_url='login')
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
                print(filter_forms.cleaned_data)
                documents = InternalDoc.objects.filter(
                    name__icontains=filter_forms.cleaned_data['name'],
                    # work__create_date__range=(
                    #     filter_forms.cleaned_data['released_start'],
                    #     filter_forms.cleaned_data['released_end']
                    # ),
                )

                if filter_forms.cleaned_data['version'] is not None:
                    documents = documents.filter(version=filter_forms.cleaned_data['version'])

                if filter_forms.cleaned_data['running_no'] is not None:
                    documents = documents.filter(running_no=filter_forms.cleaned_data['running_no'])

                if filter_forms.cleaned_data['parent_doc_name'] != '':
                    documents = documents.filter(parent_doc__name__icontains=filter_forms.cleaned_data['parent_doc_name'])

                if filter_forms.cleaned_data['type'] != '':
                    documents = documents.filter(type__exact=filter_forms.cleaned_data['type'])

                if filter_forms.cleaned_data['state'] != '':
                    documents = documents.filter(state__exact=filter_forms.cleaned_data['state'])

    else:
        if doc_type == 'internal':
            documents = InternalDoc.objects.all()
            filter_forms = InternalDocFilterForm()
        elif doc_type == 'internal-in':
            documents = InternalDoc.objects.filter(state='IN')
            filter_forms = InternalDocFilterForm(initial={'state': 'IN'})
            doc_type = 'internal'
        elif doc_type == 'internal-re':
            documents = InternalDoc.objects.filter(state='RE')
            filter_forms = InternalDocFilterForm(initial={'state': 'RE'})
            doc_type = 'internal'
        elif doc_type == 'internal-ob':
            documents = InternalDoc.objects.filter(state='OB')
            filter_forms = InternalDocFilterForm(initial={'state': 'OB'})
            doc_type = 'internal'
        elif doc_type == 'external':
            documents = ExternalDoc.objects.all()
            filter_forms = ExternalDocFilterForm()
    context = {
        'documents': documents,
        'doc_type': doc_type,
        'filter_forms': filter_forms
    }
    return render(request, 'document_list.html', context=context)


@login_required(login_url='login')
def document_detail(request, id):
    document = Document.objects.get(pk=id)
    if hasattr(document, 'internaldoc'):
        return render(request, 'document_detail.html', {'document': document.internaldoc, 'doc_type': 'internal'})
    elif hasattr(document, 'externaldoc'):
        return render(request, 'document_detail.html', {'document': document.externaldoc, 'doc_type': 'external'})


@login_required(login_url='login')
def external_add(request):
    if request.method == 'POST':
        form = ExternalDocForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
    return render(request, 'external_add.html', {'form': ExternalDocForm()})


def parse_html_time(time_string):
    return datetime.strptime(time_string, '%Y-%m-%dT%H:%M')
