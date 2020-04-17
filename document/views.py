from django.http import HttpResponse
from django.shortcuts import render
from document.models import InternalDoc, ExternalDoc

# Create your views here.
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


# def detail(request):
#     return None


def internal_detail(request):
    return None


def external_detail(request):
    return None