from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from ..decorators import allowed_users
from ..models import Memory
from ..forms import MemoryForm


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def memory_list(request):
    memorys = Memory.objects.all()
    context = {'memorys': memorys}

    return render(request, 'computers/memory/table.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def create(request):
    form = MemoryForm()

    if request.method == 'POST':
        form = MemoryForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('memory_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update(request, pk):
    memory = Memory.objects.get(id=pk)
    form = MemoryForm(instance=memory)

    if request.method == 'POST':
        form = MemoryForm(request.POST, instance=memory)
        if form.is_valid():
            form.save()
            return redirect('memory_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def delete(request, pk):
    memory = Memory.objects.get(id=pk)

    if request.method == 'POST':
        memory.delete()
        return redirect('memory_list')

    context = {'item': memory}
    return render(request, 'computers/memory/delete.html', context)