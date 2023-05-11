from django.db import models
from user.models import User

# Create your models here.
class DRequest(models.Model):
    dr_id = models.AutoField(primary_key=True)
    # u_id = models.IntegerField()
    u=models.ForeignKey(User,to_field='u_id',on_delete=models.CASCADE)
    status = models.CharField(max_length=20)
    type = models.CharField(max_length=10)
    time = models.CharField(max_length=20)
    # phone = models.CharField(max_length=10)
    longitude = models.CharField(max_length=20)
    location = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'd_request'

