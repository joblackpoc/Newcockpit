import datetime
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.contrib.auth.models import User
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.db.models import Sum
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse
from django.shortcuts import render, redirect, get_object_or_404
from django.urls import reverse_lazy, reverse
from django.views.generic import UpdateView, DetailView, CreateView, ListView
from main.forms import KeyInputForm, UserRegisterForm, UserUpdateForm, ProfileUpdateForm
from main.models import *

# Create your views here.

def Home(request):
    return render(request, 'main/home.html')

def Register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'บัญชีของคุณ - {username} - สร้างเสร็จแล้ว !')   
            return redirect('login')
    else:
        form = UserRegisterForm()
    return render(request, 'main/register.html', {'form':form})

@login_required
def profile(request):
    if request.method == 'POST':
      u_form = UserUpdateForm(request.POST, instance=request.user)
      p_form = ProfileUpdateForm(request.POST, request.FILES, instance=request.user.profile)

      if u_form.is_valid() and p_form.is_valid():
        u_form.save()
        p_form.save()
        messages.success(request, f'Your accout has been Update')
        return redirect('profile')
    else:
      u_form = UserUpdateForm(instance=request.user)
      p_form = ProfileUpdateForm(instance=request.user.profile)

    context = {
      'u_form': u_form,
      'p_form': p_form
    }
    return render(request, 'main/profile.html', context)

@login_required
def KeyIn(request):

    form = KeyInputForm
    if request.method == 'POST':
        form = KeyInputForm(request.POST)
        if form.is_valid():
            fm = form.save(commit=False)
            fm.user = request.user
            fm.save()
        return redirect('home')
    
    return render(request, 'main/kpi_input.html', {'form':form})
    
@login_required
def KeyInput(request):
    form = KeyInputForm
    if request.method == 'POST':
        form = KeyInputForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')

    return render(request, 'main/kpi_input.html', {'form':form})

@login_required
def KpiList(request):
    kpi = Kpi.objects.all()
    context = {'kpi':kpi}
    return render(request, 'main/key_list.html',context)

class KpiListView(ListView):
    model = Kpi
    template_name = 'main/key_list.html'
    context_object_name = 'kpi'
    paginate_by = 7

class KpiDetailView(DetailView):
    model = Kpi
    template_name = 'main/kpi_detail.html'

def population_chart(request):
    labels = []
    data = []
 
    queryset = Cmpo.objects.values('name').annotate(population=Sum('population')).order_by('-population') 
    for entry in queryset:
        labels.append(entry['name'])
        data.append(entry['population'])
     
    return JsonResponse(data={
        'labels': labels,
        'data': data,
    })

def ChartJS(request):
    return render(request, 'main/chartjs.html')