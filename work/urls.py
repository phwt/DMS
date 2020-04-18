from django.urls import path
from . import views

urlpatterns = [
    path('', views.work_list, name='work_list'),
    path('<int:id>', views.work_detail, name='work_detail'),
    path('create', views.work_create, name='work_create'),
]
