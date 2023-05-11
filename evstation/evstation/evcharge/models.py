from django.db import models

# Create your models here.

class Evcharge(models.Model):
    chid = models.AutoField(primary_key=True)
    amt = models.IntegerField()
    status = models.CharField(max_length=20)
    u_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'evcharge'

