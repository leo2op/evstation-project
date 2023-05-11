# Generated by Django 3.2.16 on 2023-01-29 04:26

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Login',
            fields=[
                ('l_id', models.AutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=20)),
                ('password', models.CharField(max_length=20)),
                ('u_id', models.IntegerField()),
                ('type', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'login',
                'managed': False,
            },
        ),
    ]