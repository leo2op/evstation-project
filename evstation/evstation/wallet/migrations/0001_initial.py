# Generated by Django 3.2.16 on 2023-01-29 04:26

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Wallet',
            fields=[
                ('w_id', models.AutoField(primary_key=True, serialize=False)),
                ('u_id', models.IntegerField()),
                ('bal', models.IntegerField()),
            ],
            options={
                'db_table': 'wallet',
                'managed': False,
            },
        ),
    ]
