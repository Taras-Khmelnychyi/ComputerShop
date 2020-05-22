from django.contrib import admin

from .models import *
# Register your models here.
admin.site.register(Computer)
admin.site.register(Cpu)
admin.site.register(CpuCooler)
admin.site.register(Motherboard)
admin.site.register(Memory)
admin.site.register(Storage)
admin.site.register(VideoCard)
admin.site.register(PowerSupply)
admin.site.register(Case)
admin.site.register(Customer)
admin.site.register(Order)
