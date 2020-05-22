from django.urls import path, include
from .views import (base_views, cpu_views, cpu_cooler_views, motherboard_views,
                    memory_views, storage_views, video_card_views, power_supply_views, case_views)


urlpatterns = [
    path('cpu/', cpu_views.cpu_list, name='cpu_list'),
    path('cpu/create/', cpu_views.create, name='create_cpu'),
    path('cpu/update/<int:pk>', cpu_views.update, name='update_cpu'),
    path('cpu/delete/<int:pk>', cpu_views.delete, name='delete_cpu'),

    path('cpu_cooler/', cpu_cooler_views.cpu_cooler_list, name='cpu_cooler_list'),
    path('cpu_cooler/create/', cpu_cooler_views.create, name='create_cpu_cooler'),
    path('cpu_cooler/update/<int:pk>', cpu_cooler_views.update, name='update_cpu_cooler'),
    path('cpu_cooler/delete/<int:pk>', cpu_cooler_views.delete, name='delete_cpu_cooler'),

    path('motherboard/', motherboard_views.motherboard_list, name='motherboard_list'),
    path('motherboard/create/', motherboard_views.create, name='create_motherboard'),
    path('motherboard/update/<int:pk>', motherboard_views.update, name='update_motherboard'),
    path('motherboard/delete/<int:pk>', motherboard_views.delete, name='delete_motherboard'),

    path('memory/', memory_views.memory_list, name='memory_list'),
    path('memory/create/', memory_views.create, name='create_memory'),
    path('memory/update/<int:pk>', memory_views.update, name='update_memory'),
    path('memory/delete/<int:pk>', memory_views.delete, name='delete_memory'),

    path('storage/', storage_views.storage_list, name='storage_list'),
    path('storage/create/', storage_views.create, name='create_storage'),
    path('storage/update/<int:pk>', storage_views.update, name='update_storage'),
    path('storage/delete/<int:pk>', storage_views.delete, name='delete_storage'),

    path('video_card/', video_card_views.video_card_list, name='video_card_list'),
    path('video_card/create/', video_card_views.create, name='create_video_card'),
    path('video_card/update/<int:pk>', video_card_views.update, name='update_video_card'),
    path('video_card/delete/<int:pk>', video_card_views.delete, name='delete_video_card'),

    path('power_supply/', power_supply_views.power_supply_list, name='power_supply_list'),
    path('power_supply/create/', power_supply_views.create, name='create_power_supply'),
    path('power_supply/update/<int:pk>', power_supply_views.update, name='update_power_supply'),
    path('power_supply/delete/<int:pk>', power_supply_views.delete, name='delete_power_supply'),

    path('case/', case_views.case_list, name='case_list'),
    path('case/create/', case_views.create, name='create_case'),
    path('case/update/<int:pk>', case_views.update, name='update_case'),
    path('case/delete/<int:pk>', case_views.delete, name='delete_case'),
]
