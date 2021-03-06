# Generated by Django 3.0.6 on 2020-05-18 17:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('computers', '0011_order_address'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='city',
            field=models.CharField(max_length=150, null=True),
        ),
        migrations.AddField(
            model_name='order',
            name='country',
            field=models.CharField(max_length=150, null=True),
        ),
        migrations.AddField(
            model_name='order',
            name='phone_number',
            field=models.CharField(max_length=15, null=True),
        ),
        migrations.AddField(
            model_name='order',
            name='state',
            field=models.CharField(max_length=150, null=True),
        ),
        migrations.AddField(
            model_name='order',
            name='zip_code',
            field=models.IntegerField(max_length=20, null=True),
        ),
    ]
