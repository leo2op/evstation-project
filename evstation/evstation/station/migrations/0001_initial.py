# Generated by Django 3.2.16 on 2023-01-29 04:26

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Station',
            fields=[
                ('s_id', models.AutoField(primary_key=True, serialize=False)),
                ('s_name', models.CharField(max_length=20)),
                ('email', models.CharField(max_length=20)),
                ('password', models.CharField(max_length=20)),
                ('location', models.CharField(max_length=20)),
                ('address', models.CharField(max_length=30)),
                ('phone', models.CharField(max_length=10)),
                ('status', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'station',
                'managed': False,
            },
        ),
    ]
