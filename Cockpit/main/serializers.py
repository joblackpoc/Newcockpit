from django.contrib.auth.models import User
from .models import Index, Input, Profile, Kpi, KeyInput, Group, Excellence, Kpi_index
from rest_framework import serializers

class IndexSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Index
        fields = ['kpi_code','name']