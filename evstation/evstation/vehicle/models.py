from django.db import models

# Create your models here.
class Vehicle(models.Model):
    vehicle_id = models.AutoField(primary_key=True)
    v_brand = models.CharField(max_length=20)
    v_model = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'vehicle'
