from django.db import models
from station.models import Station


class SWallet(models.Model):
    sw_id = models.AutoField(primary_key=True)
    # s_id = models.IntegerField()
    s=models.ForeignKey(Station,to_field='s_id',on_delete=models.CASCADE)
    bal = models.IntegerField()

    class Meta:
        managed = False
        db_table = 's_wallet'

