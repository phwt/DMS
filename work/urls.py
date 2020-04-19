from django.urls import path
from . import views

urlpatterns = [
    path('', views.work_list, name='work_list'),
    path('<int:id>', views.work_detail, name='work_detail'),
    path('new/create', views.work_create, name='work_create'),
    path('new/edit', views.work_edit_cancel, {'work_type': 'edit'}, name='work_edit'),
    path('new/cancel', views.work_edit_cancel, {'work_type': 'cancel'}, name='work_cancel'),
]
