# Generated by Django 3.0.6 on 2020-05-08 12:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('computers', '0006_auto_20200507_1447'),
    ]

    operations = [
        migrations.AddField(
            model_name='case',
            name='price',
            field=models.FloatField(null=True),
        ),
        migrations.AddField(
            model_name='computer',
            name='price',
            field=models.FloatField(null=True),
        ),
        migrations.AddField(
            model_name='cpu',
            name='price',
            field=models.FloatField(null=True),
        ),
        migrations.AddField(
            model_name='cpucooler',
            name='price',
            field=models.FloatField(null=True),
        ),
        migrations.AddField(
            model_name='memory',
            name='price',
            field=models.FloatField(null=True),
        ),
        migrations.AddField(
            model_name='motherboard',
            name='price',
            field=models.FloatField(null=True),
        ),
        migrations.AddField(
            model_name='powersupply',
            name='price',
            field=models.FloatField(null=True),
        ),
        migrations.AddField(
            model_name='storage',
            name='price',
            field=models.FloatField(null=True),
        ),
        migrations.AddField(
            model_name='videocard',
            name='price',
            field=models.FloatField(null=True),
        ),
        migrations.AlterField(
            model_name='computer',
            name='description',
            field=models.TextField(max_length=750, null=True),
        ),
    ]
