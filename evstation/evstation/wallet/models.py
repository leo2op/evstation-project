from django.db import models
from user.models import User

class Wallet(models.Model):
    w_id = models.AutoField(primary_key=True)
    # u_id = models.IntegerField()
    u=models.ForeignKey(User,to_field='u_id',on_delete=models.CASCADE)
    balance = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'wallet'

