from django.db import models
from station.models import Station

# Create your models here.
class Hub(models.Model):
    h_id = models.AutoField(primary_key=True)
    # s_id = models.IntegerField()
    s=models.ForeignKey(Station,to_field='s_id',on_delete=models.CASCADE)
    units_left = models.IntegerField()
    # s_name = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'hub'
