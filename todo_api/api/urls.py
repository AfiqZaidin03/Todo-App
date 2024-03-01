from django.urls import path

from . import views

urlpatterns = [
    path('', views.getRoutes),
    path('notes/', views.getTasks),
    path('notes/<str:pk>/', views.getTask)
]