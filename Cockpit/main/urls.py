from django.urls import path
from django.conf.urls import url
from .views import *

urlpatterns = [
    path('', Home, name='home' ),
    path('register/', Register, name='register'),
    path('keyin/', KeyIn, name='keyin'),
    path('kpilistview/', KpiListView.as_view(), name='kpilistview'),
    path('kpilist/', KpiList, name='kpilist'),
    path('kpiinput/', KeyInput, name='kpiinput' ),
    path('detail/<int:pk>/', KpiDetailView.as_view(), name='detail'),
    path('population-chart/', population_chart, name='population-chart'),
    path('chartjs/', ChartJS, name='chartjs'),
       
]
