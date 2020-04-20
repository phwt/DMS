from django.urls import path, include
from . import views

urlpatterns = [
    path('login/', views.auth_login, name='login'),
    path('logout/', views.auth_logout, name='logout'),
    path('change_password/', views.change_password, name='change-password'),
    path('profile/', views.profile, name='profile'),
]
