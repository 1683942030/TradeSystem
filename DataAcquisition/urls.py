from django.urls import path

from . import views

urlpatterns = [
    path('', views.test_job, name='test_job'),
]