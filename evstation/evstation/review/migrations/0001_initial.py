# Generated by Django 3.2.16 on 2023-01-29 04:26

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Review',
            fields=[
                ('r_id', models.AutoField(primary_key=True, serialize=False)),
                ('s_id', models.IntegerField()),
                ('u_id', models.IntegerField()),
                ('review', models.IntegerField()),
                ('time', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'review',
                'managed': False,
            },
        ),
    ]