from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index),
    path('internal/', views.internal_doc),
    path('external/', views.external_doc),
    path('detail/<int:id>/', views.detail),
    # path('external/add', views.external_add),
]
