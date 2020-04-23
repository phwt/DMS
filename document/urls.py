from django.urls import path
from . import views

urlpatterns = [
    path('internal/', views.document_list, {'doc_type': 'internal'}, name='internal_doc'),
    path('external/', views.document_list, {'doc_type': 'external'}, name='external_doc'),
    path('detail/<int:id>/', views.document_detail, name='doc_detail'),
    path('external/add', views.external_add, name='external_add'),
    path('api/work/', views.get_dashboard_work_list),
    path('api/internal/', views.get_dashboard_internal_document_list),
    path('api/work_cnt/', views.get_dashboard_doc_cnt),
]
