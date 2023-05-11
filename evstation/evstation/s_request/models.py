from django.db import models

# Create your models here.
class SRequest(models.Model):
    sr_id = models.AutoField(primary_key=True)
    u_id = models.IntegerField()
    location = models.CharField(max_length=20)
    status = models.CharField(max_length=20)
    sc_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 's_request'

