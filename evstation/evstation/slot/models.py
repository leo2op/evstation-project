from django.db import models


class Slot(models.Model):
    slot_id = models.IntegerField(primary_key=True)
    station_id = models.IntegerField()
    username = models.CharField(max_length=20)
    start_time = models.CharField(max_length=20)
    end_time = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'slot'
