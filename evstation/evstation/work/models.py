from django.db import models
from d_boy.models import DBoy
# Create your models here.


class Work(models.Model):
    work_id = models.AutoField(primary_key=True)
    s_id = models.IntegerField()
    status = models.CharField(max_length=20)
    # dboy_id = models.IntegerField()
    dboy=models.ForeignKey(DBoy,to_field='dboy_id',on_delete=models.CASCADE)
    location = models.CharField(max_length=20)
    type = models.CharField(max_length=23)

    class Meta:
        managed = False
        db_table = 'work'
