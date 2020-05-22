from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

from ..decorators import allowed_users
from ..models import Case
from ..forms import CaseForm


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def case_list(request):
    cases = Case.objects.all()
    context = {'cases': cases}

    return render(request, 'computers/case/table.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def create(request):
    form = CaseForm()

    if request.method == 'POST':
        form = CaseForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('case_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update(request, pk):
    case = Case.objects.get(id=pk)
    form = CaseForm(instance=case)

    if request.method == 'POST':
        form = CaseForm(request.POST, instance=case)
        if form.is_valid():
            form.save()
            return redirect('case_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def delete(request, pk):
    case = Case.objects.get(id=pk)

    if request.method == 'POST':
        case.delete()
        return redirect('case_list')

    context = {'item': case}
    return render(request, 'computers/case/delete.html', context)