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
    path('create/', PersonCreate, name='person_add'),
    path('ajax/load-cities/', load_cities, name='ajax_load_cities'),
    path('list/', PersonList, name='person_list'),
    path('<int:pk>/', PersonUpdateView.as_view(),name='person_update'),
    path('population-chart/', population_chart, name='population-chart'),
    path('chartjs/', ChartJS, name='chart-js'),
       
]
