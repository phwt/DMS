from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.contrib.auth.models import User

from authen.models import Employee


def auth_login(request):
    context = {}

    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)

        if user:
            login(request, user)
            if request.POST.get('next'):
                return redirect(request.POST.get('next'))
            return redirect('index')
        else:
            context['username'] = username
            context['password'] = password
            context['error'] = 'Wrong username or password!'
    return render(request, 'login.html', context=context)


@login_required(login_url='login')
def auth_logout(request):
    logout(request)
    return redirect('login')


@login_required(login_url='login')
def change_password(request):
    context = {}
    if request.method == 'POST':
        username = request.user.username
        password = request.POST.get('password')
        newpassword = request.POST.get('newpassword')
        confirm = request.POST.get('confirmnewpassword')
        user = authenticate(request, username=username, password=password)
        if user:
            if newpassword == confirm:
                u = User.objects.get(username=username)
                u.set_password(newpassword)
                u.save()
                return redirect('login')
            else:
                context['password'] = password
                context['errornew'] = 'Password doesn''t Match!'
        else:
            context['password'] = password
            context['error'] = 'Wrong password!'
    return render(request, 'changepassword.html', context=context)


@login_required(login_url='login')
def profile(request):
    employee = Employee.objects.get(pk=request.user.employee.id)
    context = {
        'employee': employee
    }
    return render(request, 'profile.html', context=context)


@login_required(login_url='login')
def profile_other(request, id):
    employee = Employee.objects.get(pk=id)
    context = {
        'employee': employee,
        'user_id': 'have_id'
    }
    return render(request, 'profile.html', context=context)