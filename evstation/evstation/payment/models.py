from django.db import models
from user.models import User

# Create your models here.
class Payment(models.Model):
    p_id = models.AutoField(primary_key=True)
    w_id = models.IntegerField()
    # u_id = models.IntegerField()
    u=models.ForeignKey(User,to_field='u_id',on_delete=models.CASCADE)
    s_id = models.IntegerField()
    # username = models.CharField(max_length=20)
    # s_name = models.CharField(max_length=20)
    amount = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'payment'

