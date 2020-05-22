import django_filters
from django_filters import CharFilter, NumberFilter, DateFilter

from .models import *


class ComputerFilter(django_filters.FilterSet):
    name = CharFilter(field_name='name', lookup_expr='icontains', label='Name')

    gt_price = NumberFilter(field_name='price', lookup_expr='gte', label='Price in range from:')
    lt_price = NumberFilter(field_name='price', lookup_expr='lte', label='to')

    class Meta:
        model = Computer
        exclude = ['price', 'description']


class OrderFilter(django_filters.FilterSet):
    from_date = DateFilter(field_name='date_created', lookup_expr='gte', label='From date')
    to_date = DateFilter(field_name='date_created', lookup_expr='lte', label='To date')

    class Meta:
        model = Order
        fields = '__all__'
        exclude = ['date_created']