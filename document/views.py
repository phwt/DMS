from document.models import Document, InternalDoc, ExternalDoc
from django.shortcuts import redirect, render

def index(request):
    return render(request, 'index.html')
    # return HttpResponse("work")


def internal_detail(request, id):
    doc = InternalDoc.objects.get(pk=id)
    return render(request, template_name='internal_detail.html', context={
        'doc': doc
    })

def external_detail(request, id):
    doc = ExternalDoc.objects.get(pk=id)
    return render(request, template_name='external_detail.html', context={
        'doc': doc
    })