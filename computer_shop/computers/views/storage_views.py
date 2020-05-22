from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from ..decorators import allowed_users
from ..models import Storage
from ..forms import StorageForm


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def storage_list(request):
    storages = Storage.objects.all()
    context = {'storages': storages}

    return render(request, 'computers/storage/table.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def create(request):
    form = StorageForm()

    if request.method == 'POST':
        form = StorageForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('storage_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update(request, pk):
    storage = Storage.objects.get(id=pk)
    form = StorageForm(instance=storage)

    if request.method == 'POST':
        form = StorageForm(request.POST, instance=storage)
        if form.is_valid():
            form.save()
            return redirect('storage_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def delete(request, pk):
    storage = Storage.objects.get(id=pk)

    if request.method == 'POST':
        storage.delete()
        return redirect('storage_list')

    context = {'item': storage}
    return render(request, 'computers/storage/delete.html', context)