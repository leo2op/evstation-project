from django.db import models
from user.models import User
from station.models import Station
# Create your models here.

class Review(models.Model):
    r_id = models.AutoField(primary_key=True)
    s_id = models.IntegerField()
    # u_id = models.IntegerField()
    u=models.ForeignKey(User,to_field='u_id',on_delete=models.CASCADE)
    review = models.CharField(max_length=200)
    time = models.CharField(max_length=20)
    star = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'review'

