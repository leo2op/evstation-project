from django.db import models

# Create your models here.

class Station(models.Model):
    s_id = models.AutoField(primary_key=True)
    s_name = models.CharField(max_length=100)
    email = models.CharField(max_length=20)
    password = models.CharField(max_length=20)
    location = models.CharField(max_length=50)
    phone = models.CharField(max_length=10)
    proof = models.CharField(max_length=250)
    electricity_license = models.CharField(max_length=250)
    latitude = models.FloatField()
    longitude = models.FloatField()
    address = models.CharField(max_length=200)
    status = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'station'

