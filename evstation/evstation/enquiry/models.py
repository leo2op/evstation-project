from django.db import models
from user.models import User
from s_center.models import SCenter

# Create your models here.


class Enquiry(models.Model):
    en_id = models.AutoField(primary_key=True)
    sc_id = models.IntegerField()
    # u_id = models.IntegerField()
    u=models.ForeignKey(User,to_field='u_id',on_delete=models.CASCADE)
    enquiry = models.CharField(max_length=100)
    response = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'enquiry'



