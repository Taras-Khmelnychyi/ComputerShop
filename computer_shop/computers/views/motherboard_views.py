from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from ..decorators import allowed_users
from ..models import Motherboard
from ..forms import MotherboardForm


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def motherboard_list(request):
    motherboards = Motherboard.objects.all()
    context = {'motherboards': motherboards}

    return render(request, 'computers/motherboard/table.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def create(request):
    form = MotherboardForm()

    if request.method == 'POST':
        form = MotherboardForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('motherboard_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update(request, pk):
    motherboard = Motherboard.objects.get(id=pk)
    form = MotherboardForm(instance=motherboard)

    if request.method == 'POST':
        form = MotherboardForm(request.POST, instance=motherboard)
        if form.is_valid():
            form.save()
            return redirect('motherboard_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def delete(request, pk):
    motherboard = Motherboard.objects.get(id=pk)

    if request.method == 'POST':
        motherboard.delete()
        return redirect('motherboard_list')

    context = {'item': motherboard}
    return render(request, 'computers/motherboard/delete.html', context)