from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from ..decorators import allowed_users
from ..models import Cpu
from ..forms import CpuForm


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def cpu_list(request):
    cpus = Cpu.objects.all()
    context = {'cpus': cpus}

    return render(request, 'computers/cpu/table.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def create(request):
    form = CpuForm()

    if request.method == 'POST':
        form = CpuForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('cpu_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update(request, pk):
    cpu = Cpu.objects.get(id=pk)
    form = CpuForm(instance=cpu)

    if request.method == 'POST':
        form = CpuForm(request.POST, instance=cpu)
        if form.is_valid():
            form.save()
            return redirect('cpu_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def delete(request, pk):
    cpu = Cpu.objects.get(id=pk)

    if request.method == 'POST':
        cpu.delete()
        return redirect('cpu_list')

    context = {'item': cpu}
    return render(request, 'computers/cpu/delete.html', context)