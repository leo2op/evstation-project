from django.db import models

# Create your models here.
class CPoints(models.Model):
    cp_id = models.AutoField(primary_key=True)
    s_id = models.IntegerField()
    status = models.CharField(max_length=20)
    u_id = models.IntegerField()
    cpoint = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'c_points'
