from django.urls import path
from django.conf.urls import url
from .views import *

urlpatterns = [
    path('', Home, name='home' ),
    path('register/', Register, name='register'),
    path('kpilistview/', KpiListView.as_view(), name='kpilistview'),
    path('keyin/', KeyIn, name='keyin'),
    path('kpilist/', KpiList, name='kpilist'),
    path('kpiinput/', KeyInput, name='kpiinput' ),
    path('detail/<int:pk>/', KpiDetailView.as_view(), name='detail'),
    path('ajax/load-index/', load_index, name='ajax-load-index'),
    path('input/', Input, name='input'),
    path('population-chart/', population_chart, name='population-chart'),
    path('chart-js/', ChartJS, name='chart-js'),
       
]
