# Generated by Django 3.1 on 2020-08-26 06:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='input',
            name='excellence',
        ),
    ]
