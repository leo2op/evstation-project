from django.db import models
from user.models import User

# Create your models here.

class Complaint(models.Model):
    c_id = models.AutoField(primary_key=True)
    u=models.ForeignKey(User,to_field='u_id',on_delete=models.CASCADE)
    # u_id = models.IntegerField()

    complaint = models.CharField(max_length=50)
    reply = models.CharField(max_length=50)
    time = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'complaint'
