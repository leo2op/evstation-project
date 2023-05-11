from django.db import models

# Create your models here.
class SCenter(models.Model):
    sc_id = models.AutoField(primary_key=True)
    password = models.CharField(max_length=20)
    service_available = models.TextField()
    location = models.CharField(max_length=20)
    phone = models.CharField(max_length=10)
    email = models.CharField(max_length=20)
    status = models.CharField(max_length=10)
    sc_name = models.CharField(max_length=20)
    certification = models.CharField(max_length=250)
    address = models.CharField(max_length=200)
    image = models.CharField(max_length=250)

    class Meta:
        managed = False
        db_table = 's_center'
