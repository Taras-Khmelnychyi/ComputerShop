from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from ..decorators import allowed_users
from ..models import CpuCooler
from ..forms import CpuCoolerForm


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def cpu_cooler_list(request):
    cpu_coolers = CpuCooler.objects.all()
    context = {'cpu_coolers': cpu_coolers}

    return render(request, 'computers/cpu_cooler/table.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def create(request):
    form = CpuCoolerForm()

    if request.method == 'POST':
        form = CpuCoolerForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('cpu_cooler_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update(request, pk):
    cpu_cooler = CpuCooler.objects.get(id=pk)
    form = CpuCoolerForm(instance=cpu_cooler)

    if request.method == 'POST':
        form = CpuCoolerForm(request.POST, instance=cpu_cooler)
        if form.is_valid():
            form.save()
            return redirect('cpu_cooler_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def delete(request, pk):
    cpu_cooler = CpuCooler.objects.get(id=pk)

    if request.method == 'POST':
        cpu_cooler.delete()
        return redirect('cpu_cooler_list')

    context = {'item': cpu_cooler}
    return render(request, 'computers/cpu_cooler/delete.html', context)