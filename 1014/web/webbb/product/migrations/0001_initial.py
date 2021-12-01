# Generated by Django 3.2.8 on 2021-10-12 13:22

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('shop', models.CharField(max_length=15)),
                ('name', models.CharField(max_length=100)),
                ('price', models.IntegerField()),
                ('photo_url', models.CharField(max_length=200)),
                ('link', models.CharField(max_length=200)),
                ('amount', models.IntegerField()),
                ('create_date', models.DateField()),
                ('product_type', models.IntegerField()),
            ],
            options={
                'db_table': 'product',
            },
        ),
    ]
