from django.db import models

# Create your models here.
class User(models.Model):
    u_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=20)
    email = models.CharField(max_length=20)
    phone = models.CharField(max_length=10)
    vehicle_id = models.CharField(max_length=20)
    name = models.CharField(max_length=20)
    address = models.CharField(max_length=50)
    license = models.CharField(max_length=250)

    class Meta:
        managed = False
        db_table = 'user'

