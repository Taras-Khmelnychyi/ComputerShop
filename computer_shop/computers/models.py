from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
from django.db.models import Sum
from django.db.models.signals import post_save


class Cpu(models.Model):
    name = models.CharField(max_length=150, null=True)
    model = models.CharField(max_length=150, null=True)
    series = models.CharField(max_length=150, null=True)
    socket = models.CharField(max_length=150, null=True)
    core_count = models.PositiveIntegerField(null=True)
    core_clock = models.FloatField(null=True)  # add GHz when printing out
    price = models.FloatField(null=True)

    def __str__(self):
        return self.name


class CpuCooler(models.Model):
    name = models.CharField(max_length=150, null=True)
    fan_rpm = models.CharField(max_length=150, null=True, blank=True)
    noise_level = models.CharField(max_length=150, null=True, blank=True)
    color = models.CharField(max_length=150, null=True, blank=True)
    radiator_size = models.CharField(max_length=150, null=True, blank=True)
    price = models.FloatField(null=True)

    def __str__(self):
        return self.name


class Motherboard(models.Model):
    name = models.CharField(max_length=150, null=True)
    socket = models.CharField(max_length=150, null=True)
    form_factor = models.CharField(max_length=150, null=True)
    memory_max = models.PositiveIntegerField(null=True)
    memory_slots = models.PositiveIntegerField(null=True)
    price = models.FloatField(null=True)

    def __str__(self):
        return self.name


class Memory(models.Model):
    name = models.CharField(max_length=150, null=True)
    speed = models.CharField(max_length=150, null=True)
    type = models.CharField(max_length=150, null=True)
    modules_count = models.PositiveIntegerField(null=True)
    modules_memory = models.PositiveIntegerField(null=True)
    cas_latency = models.PositiveIntegerField(null=True)
    price = models.FloatField(null=True)

    def __str__(self):
        return self.name


class Storage(models.Model):
    name = models.CharField(max_length=150, null=True)
    capacity = models.CharField(max_length=150, null=True)
    type = models.CharField(max_length=150, null=True)
    cache = models.CharField(max_length=150, null=True, blank=True)
    form_factor = models.CharField(max_length=150, null=True)
    interface = models.CharField(max_length=150, null=True)
    price = models.FloatField(null=True)

    def __str__(self):
        return self.name


class VideoCard(models.Model):
    name = models.CharField(max_length=150, null=True)
    chipset = models.CharField(max_length=150, null=True)
    memory = models.CharField(max_length=150, null=True)
    core_clock = models.FloatField(null=True)  # add MHz when printing out
    interface = models.CharField(max_length=150, null=True)
    price = models.FloatField(null=True)

    def __str__(self):
        return self.name


class PowerSupply(models.Model):
    name = models.CharField(max_length=150, null=True)
    form_factor = models.CharField(max_length=150, null=True)
    efficiency_rating = models.CharField(max_length=150, null=True)
    wattage = models.PositiveIntegerField(null=True)  # add W when printing out
    modular = models.CharField(max_length=150, null=True)
    price = models.FloatField(null=True)

    def __str__(self):
        return self.name


class Case(models.Model):
    name = models.CharField(max_length=150, null=True)
    type = models.CharField(max_length=150, null=True)
    color = models.CharField(max_length=150, null=True)
    power_supply = models.CharField(max_length=150, null=True)
    side_panel_window = models.CharField(max_length=150, null=True)
    external_5_25_bays = models.PositiveIntegerField(null=True)
    external_3_5_bays = models.PositiveIntegerField(null=True)
    price = models.FloatField(null=True)

    def __str__(self):
        return self.name


class Computer(models.Model):
    name = models.CharField(max_length=150, null=True)
    description = models.TextField(max_length=750, null=True, )
    cpu = models.ForeignKey('Cpu', on_delete=models.SET_NULL, null=True)
    cpu_cooler = models.ForeignKey('CpuCooler', on_delete=models.SET_NULL, null=True)
    motherboard = models.ForeignKey('Motherboard', on_delete=models.SET_NULL, null=True)
    memory = models.ManyToManyField('Memory')
    storage = models.ManyToManyField('Storage')
    video_card = models.ForeignKey('VideoCard', on_delete=models.SET_NULL, null=True)
    psu = models.ForeignKey('PowerSupply', on_delete=models.SET_NULL, null=True)
    case = models.ForeignKey('Case', on_delete=models.SET_NULL, null=True)
    price = models.FloatField(null=True)
    profit = models.FloatField(null=True, default=0)

    def __str__(self):
        return self.name

    @property
    def nominal_price(self):
        price = self.cpu.price + self.cpu_cooler.price + self.motherboard.price \
                + self.video_card.price + self.psu.price + self.case.price

        memory_sum = self.memory.all().aggregate(Sum('price'))
        storage_sum = self.storage.all().aggregate(Sum('price'))

        price += memory_sum['price__sum']
        price += storage_sum['price__sum']

        return round(price, 2)

    def save(self, *args, **kwargs):
        if self.pk is None:
            super().save(*args, **kwargs)
        else:
            self.profit = self.nominal_price
            super().save(*args, **kwargs)


class Customer(models.Model):
    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    full_name = models.CharField(max_length=150, null=True)

    def __str__(self):
        return self.full_name


class Order(models.Model):
    SEND_OUT = 'Send out'
    PENDING = 'Pending'
    STATUS_CHOICES = [
        (SEND_OUT, 'Відправлено'),
        (PENDING, 'Очікує на відправлення'),
    ]
    customer = models.ForeignKey(Customer, null=True, on_delete=models.SET_NULL)
    computer = models.ForeignKey(Computer, null=True, on_delete=models.SET_NULL)
    country = models.CharField(max_length=150, null=True)
    state = models.CharField(max_length=150, null=True)
    city = models.CharField(max_length=150, null=True)
    address = models.CharField(max_length=150, null=True)
    zip_code = models.CharField(max_length=5, null=True)
    phone_number = models.CharField(max_length=20, null=True)
    status = models.CharField(max_length=10, null=True, choices=STATUS_CHOICES, default=PENDING)
    date_created = models.DateTimeField(default=timezone.now, null=True)
