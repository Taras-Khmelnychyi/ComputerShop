from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.db.models import Sum
from django.utils import timezone


from ..decorators import allowed_users
from ..models import Computer, Customer, Order
from ..forms import OrderForm, PlaceOrderForm
from ..filters import OrderFilter


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def orders(request):
    _orders = Order.objects.all()
    # print(_orders)

    my_filter = OrderFilter(request.GET, queryset=_orders)
    _orders = my_filter.qs  # assigning filtered queryset

    orders_count = _orders.count()
    send_out_count = _orders.filter(status=Order.SEND_OUT).count()
    pending_count = _orders.filter(status=Order.PENDING).count()
    ids = _orders.values_list('computer', flat=True)  # Getting all ids of PCs in orders

    if ids:  # checking if orders with specified filter exist
        #  create query for all computers within specified id list
        #  and sum all profits
        profit_sum_dict = Computer.objects.filter(id__in=ids).aggregate(Sum('profit'))
        profit_sum = round(profit_sum_dict['profit__sum'], 2)  # Extracting value of sum
    else:
        profit_sum = 0

    # print(ids)
    context = {
        'orders': _orders,
        'my_filter': my_filter,
        'profit_sum': profit_sum,
        'orders_count': orders_count,
        'send_out_count': send_out_count,
        'pending_count': pending_count,
    }

    return render(request, 'computers/order/table.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin', 'customer'])
def place_order(request, computer_id):
    _computer = Computer.objects.get(id=computer_id)
    customer = Customer.objects.get(user=request.user)

    form = PlaceOrderForm()

    if request.method == 'POST':
        _dict = request.POST.copy()
        #  adding hidden values to input data
        _dict.update({
            'full_name': customer.full_name,
            'computer': _computer,
            'customer': customer,
            'status': Order.PENDING,
            'date_created': timezone.now(),
        })
        form = OrderForm(_dict)
        # print(form.is_valid(), _dict)
        if form.is_valid():
            form.save()
            # print(form.cleaned_data['computer'])
            return redirect('home')

    context = {'form': form, 'computer': _computer}

    return render(request, 'computers/order/create.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def create(request):
    form = OrderForm()

    if request.method == 'POST':
        form = OrderForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('order_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def update(request, pk):
    order = Order.objects.get(id=pk)
    form = OrderForm(instance=order)

    if request.method == 'POST':
        form = OrderForm(request.POST, instance=order)
        if form.is_valid():
            form.save()
            return redirect('order_list')

    context = {'form': form}
    return render(request, 'computers/create_form.html', context)


@login_required(login_url='login')
@allowed_users(allowed_roles=['admin'])
def delete(request, pk):
    order = Order.objects.get(id=pk)

    if request.method == 'POST':
        order.delete()
        return redirect('order_list')

    context = {'item': order}
    return render(request, 'computers/order/delete.html', context)