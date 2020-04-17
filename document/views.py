from django.http import HttpResponse
from document.models import Document, InternalDoc, ExternalDoc
from django.shortcuts import redirect, render


def index(request):
    return render(request, 'index.html')
    # return HttpResponse("work")


def internal_doc(request):
    internal = InternalDoc.objects.all()
    context = {
        'internal': internal,
        'type': 'internal'
    }
    return render(request, 'listpage.html', context=context)


def external_doc(request):
    external = ExternalDoc.objects.all()
    context = {
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
    return None
