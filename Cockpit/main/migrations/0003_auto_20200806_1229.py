# Generated by Django 3.1 on 2020-08-06 05:29

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0002_chospital_excellence'),
    ]

    operations = [
        migrations.RenameField(
            model_name='chospital',
            old_name='mocode',
            new_name='mcode',
        ),
    ]
