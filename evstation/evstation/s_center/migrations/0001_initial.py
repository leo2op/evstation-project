# Generated by Django 3.2.16 on 2023-01-29 04:26

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='SCenter',
            fields=[
                ('sc_id', models.AutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=20)),
                ('password', models.CharField(max_length=20)),
                ('w_id', models.IntegerField()),
                ('service_available', models.CharField(max_length=50)),
                ('location', models.CharField(max_length=20)),
                ('phone', models.CharField(max_length=10)),
                ('email', models.CharField(max_length=20)),
                ('status', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 's_center',
                'managed': False,
            },
        ),
    ]
