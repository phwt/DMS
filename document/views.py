from django.http import HttpResponse
from document.models import Document, InternalDoc, ExternalDoc, ExternalDocForm
from django.shortcuts import redirect, render

def index(request):
    return render(request, 'index.html')
    # return HttpResponse("work")


def internal_doc(request):
    search = request.GET.get('search', '')
    internal = InternalDoc.objects.filter(
        name__icontains=search
    )
    context = {
        'sh': search,
        'internal': internal,
        'type': 'internal'
    }
    return render(request, 'listpage.html', context=context)


def external_doc(request):
    search = request.GET.get('search', '')
    external = ExternalDoc.objects.filter(
        name__icontains=search
    )
    context = {
        'sh': search,
        'external': external,
        'type': 'external'
    }
    return render(request, 'listpage.html', context=context)


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
        ExternalDocForm(request.POST).save()
    return render(request, 'external_add.html', {'form': ExternalDocForm()})
