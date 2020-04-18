from django.shortcuts import render

from work.models import Work


def work_list(request):
    work = Work.objects.all()
    context = {
        'works': work
    }
    return render(request, 'work_list.html', context=context)


def work_detail(request):
    return None


def work_create(request):
    return None
