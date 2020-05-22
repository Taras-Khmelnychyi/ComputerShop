from django.forms import ModelForm
from django.contrib.auth.forms import UserCreationForm

from .models import *


class CreateUserForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']


class CpuForm(ModelForm):
    class Meta:
        model = Cpu
        fields = '__all__'


class CpuCoolerForm(ModelForm):
    class Meta:
        model = CpuCooler
        fields = '__all__'


class MotherboardForm(ModelForm):
    class Meta:
        model = Motherboard
        fields = '__all__'


class MemoryForm(ModelForm):
    class Meta:
        model = Memory
        fields = '__all__'


class StorageForm(ModelForm):
    class Meta:
        model = Storage
        fields = '__all__'


class VideoCardForm(ModelForm):
    class Meta:
        model = VideoCard
        fields = '__all__'


class PowerSupplyForm(ModelForm):
    class Meta:
        model = PowerSupply
        fields = '__all__'


class CaseForm(ModelForm):
    class Meta:
        model = Case
        fields = '__all__'


class ComputerForm(ModelForm):
    class Meta:
        model = Computer
        fields = '__all__'
        exclude = ['profit']


class OrderForm(ModelForm):
    class Meta:
        model = Order
        fields = '__all__'
        # exclude = ['date_created']


class PlaceOrderForm(ModelForm):
    class Meta:
        model = Order
        fields = '__all__'
        exclude = ['full_name', 'computer', 'customer', 'status', 'date_created']


class CustomerForm(ModelForm):
    class Meta:
        model = Customer
        fields = '__all__'
