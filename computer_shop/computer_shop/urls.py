"""computer_shop URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from computers.views import base_views, order_views

urlpatterns = [
    path('', base_views.home, name='home'),
    path('admin/', admin.site.urls),

    path('register/', base_views.register_user, name='register'),
    path('login/', base_views.login_user, name='login'),
    path('logout/', base_views.logout_user, name='logout'),
    path('profile/', base_views.profile, name='profile'),

    path('computer/<int:pk>', base_views.computer, name='computer'),
    path('computer/create', base_views.create_computer, name='create_computer'),
    path('computer/update/<int:pk>', base_views.update_computer, name='update_computer'),
    path('computer/delete/<int:pk>', base_views.delete_computer, name='delete_computer'),

    path('computer/buy/<int:computer_id>', order_views.place_order, name='place_order'),

    path('order/', order_views.orders, name='order_list'),
    path('order/create', order_views.create, name='create_order'),
    path('order/update/<int:pk>', order_views.update, name='update_order'),
    path('order/delete/<int:pk>', order_views.delete, name='delete_order'),
    path('', include('computers.urls'))
]
