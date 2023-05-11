from django.db import models

# Create your models here.

class DBoy(models.Model):
    dboy_id = models.AutoField(primary_key=True)
    w_id = models.IntegerField()
    dboy_name = models.CharField(max_length=20)
    phone = models.CharField(max_length=10)
    gender = models.CharField(max_length=10)
    password = models.CharField(max_length=10)
    email = models.CharField(max_length=50)
    status = models.CharField(max_length=20)
    address = models.CharField(max_length=50)
    age = models.IntegerField()
    qualification = models.CharField(max_length=50)
    license = models.CharField(max_length=250)
    pan = models.CharField(max_length=20)
    photo = models.CharField(max_length=250)

    class Meta:
        managed = False
        db_table = 'd_boy'


