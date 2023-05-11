from rest_framework import serializers
from station.models import Station

class android_serialiser(serializers.ModelSerializer):
    class Meta:
        model=Station
        fields='__all__'