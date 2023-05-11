from rest_framework import serializers
from evcharge.models import Evcharge

class android_serialiser(serializers.ModelSerializer):
    class Meta:
        model=Evcharge
        fields='__all__'