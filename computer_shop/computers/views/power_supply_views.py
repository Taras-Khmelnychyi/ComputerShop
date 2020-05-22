from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from ..decorators import allowed_users
from ..models import PowerSupply
from ..forms import PowerSupplyForm


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def power_supply_list(request):
    power_supplys = PowerSupply.objects.all()
    context = {'power_supplys': power_supplys}

    return render(request, 'computers/power_supply/table.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def create(request):
    form = PowerSupplyForm()

    if request.method == 'POST':
        form = PowerSupplyForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('power_supply_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update(request, pk):
    power_supply = PowerSupply.objects.get(id=pk)
    form = PowerSupplyForm(instance=power_supply)

    if request.method == 'POST':
        form = PowerSupplyForm(request.POST, instance=power_supply)
        if form.is_valid():
            form.save()
            return redirect('power_supply_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def delete(request, pk):
    power_supply = PowerSupply.objects.get(id=pk)

    if request.method == 'POST':
        power_supply.delete()
        return redirect('power_supply_list')

    context = {'item': power_supply}
    return render(request, 'computers/power_supply/delete.html', context)