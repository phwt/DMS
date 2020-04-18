from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('internal/', views.document_list, {'doc_type': 'internal'}, name='internal_doc'),
    path('external/', views.document_list, {'doc_type': 'external'}, name='external_doc'),
    path('internal/detail/<int:id>/', views.internal_detail, name='internal_detail'),
    path('external/detail/<int:id>/', views.external_detail, name='external_detail'),
    path('external/add', views.external_add),
]
