from django.db import models

# Create your models here.
class Trip(models.Model):
    trip_id = models.AutoField(primary_key=True)
    u_id = models.IntegerField()
    start_location = models.CharField(max_length=20)
    stop_location = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'trip'
