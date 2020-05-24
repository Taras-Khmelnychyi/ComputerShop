from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import Group
from django.db.models import Sum

from ..decorators import unauthenticated_user, allowed_users
from ..models import Computer, Customer, Order
from ..forms import ComputerForm, CreateUserForm, CustomerForm
from ..filters import ComputerFilter


@unauthenticated_user
def register_user(request):
    form = CreateUserForm()

    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            user = form.save()

            group = Group.objects.get(name='customer')
            group.user_set.add(user)

            full_name = request.POST.get('full_name')

            customer = CustomerForm({'user': user, 'full_name': full_name})
            if customer.is_valid():
                customer.save()

            return redirect('login')

    context = {'form': form}
    return render(request, 'computers/accounts/register.html', context)


@unauthenticated_user
def login_user(request):

    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            return redirect('home')
        else:
            messages.info(request, 'Username or Password is incorrect!')

    context = {}
    return render(request, 'computers/accounts/login.html', context)


@login_required(login_url='login')
def logout_user(request):
    logout(request)
    return redirect('login')


@login_required(login_url='login')
def profile(request):
    customer = Customer.objects.get(user=request.user)
    orders = Order.objects.all().filter(customer=customer)

    context = {'customer': customer, 'orders': orders}

    return render(request, 'computers/profile.html', context)


def home(request):
    computers = Computer.objects.all()
    # show_logout = request.user.is_authenticated()

    my_filter = ComputerFilter(request.GET, queryset=computers)
    computers = my_filter.qs
    context = {
        'computers': computers,
        'my_filter': my_filter,
    }
    return render(request, 'computers/home.html', context)


def computer(request, pk):
    _computer = Computer.objects.get(id=pk)

    context = {
        'computer': _computer,
    }
    return render(request, 'computers/computer.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def create_computer(request):
    form = ComputerForm()

    if request.method == 'POST':
        form = ComputerForm(request.POST)
        if form.is_valid():
            new_computer = form.save()
            new_computer.save()
            return redirect('home')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update_computer(request, pk):
    _computer = Computer.objects.get(id=pk)
    form = ComputerForm(instance=_computer)

    if request.method == 'POST':
        form = ComputerForm(request.POST, instance=_computer)
        if form.is_valid():
            form.save()
            return redirect('home')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def delete_computer(request, pk):
    _computer = Computer.objects.get(id=pk)

    if request.method == 'POST':
        _computer.delete()
        return redirect('home')

    context = {'item': _computer}
    return render(request, 'computers/delete_computer.html', context)


