# Generated by Django 3.0.6 on 2020-05-19 17:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('computers', '0022_remove_cpu_twice_price'),
    ]

    operations = [
        migrations.AddField(
            model_name='computer',
            name='profit',
            field=models.FloatField(null=True),
        ),
    ]
