from django.urls import path
from . import views

urlpatterns = [
    path('internal/', views.document_list, {'doc_type': 'internal'}, name='internal_doc'),
    path('internal/inprogress', views.document_list, {'doc_type': 'internal-in'}, name='internal_doc'),
    path('internal/released', views.document_list, {'doc_type': 'internal-re'}, name='internal_doc'),
    path('internal/obsoleted', views.document_list, {'doc_type': 'internal-ob'}, name='internal_doc'),
    path('external/', views.document_list, {'doc_type': 'external'}, name='external_doc'),
    path('detail/<int:id>/', views.document_detail, name='doc_detail'),
    path('external/add', views.external_add, name='external_add'),
]
