from django.urls import path, include
from . import views

urlpatterns = [
    path('login/', views.auth_login, name='login'),
    path('logout/', views.auth_logout, name='logout'),
    path('changepassword/', views.auth_changepassword, name='changepassword'),
]
