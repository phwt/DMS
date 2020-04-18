from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth.models import User

# Create your views here.
def auth_login(request):
    context = {}

    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)

        if user:
            login(request, user)
            return redirect('index')
        else:
            context['username'] = username
            context['password'] = password
            context['error'] = 'Wrong username or password!'
    return render(request, 'login.html', context=context)


def auth_logout(request):
    logout(request)
    return redirect('login')

@login_required
def auth_changepassword(request):
    context = {}
    # u = User.objects.get(username='john')
    # u.set_password('new password')
    # u.save()
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
                context['errornew'] = 'Password NotMatch!'
        else:
            context['password'] = password
            context['error'] = 'Wrong password!'
    return render(request, 'changepassword.html', context=context)