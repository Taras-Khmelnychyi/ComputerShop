# Generated by Django 3.0.6 on 2020-05-07 11:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('computers', '0004_auto_20200507_1148'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='computer',
            name='memory',
        ),
        migrations.AddField(
            model_name='computer',
            name='memory',
            field=models.ManyToManyField(null=True, to='computers.Memory'),
        ),
        migrations.RemoveField(
            model_name='computer',
            name='storage',
        ),
        migrations.AddField(
            model_name='computer',
            name='storage',
            field=models.ManyToManyField(null=True, to='computers.Storage'),
        ),
    ]