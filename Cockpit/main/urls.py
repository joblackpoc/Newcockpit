from django.urls import path
from django.conf.urls import url
from .views import *

urlpatterns = [
    path('', Home, name='home' ),
    path('register/', Register, name='register'),
    path('kpilistview/', KpiListView.as_view(), name='kpilistview'),
    path('keyin/', KeyinCreateView.as_view(), name='keyin'),
    path('kpilist/', KpiList, name='kpilist'),
    path('kpiinput/', KeyInput, name='kpiinput' ),
    path('ajax/load-kpi/', load_kpi, name='ajax_load_kpi'),
    path('detail/<int:pk>/', KpiDetailView.as_view(), name='detail'),
    path('population-chart/', population_chart, name='population-chart'),
    path('chartjs/', ChartJS, name='chartjs'),
       
]
