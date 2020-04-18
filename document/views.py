from .models import Document, InternalDoc, ExternalDoc
from .forms import ExternalDocForm, ExternalDocFilterForm
from django.shortcuts import redirect, render


def index(request):
    return render(request, 'index.html')
    # return HttpResponse("work")


def document_list(request, doc_type):
    search = request.GET.get('search', '')
    if doc_type == 'internal':
        documents = InternalDoc.objects.filter(name__icontains=search)
    elif doc_type == 'external':
        documents = ExternalDoc.objects.filter(name__icontains=search)
        filter_forms = ExternalDocFilterForm()
    context = {
        'sh': search,
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
