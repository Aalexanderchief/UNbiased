# Generated by Django 5.1.4 on 2024-12-08 07:36

import django.utils.timezone
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0002_article_delete_note'),
    ]

    operations = [
        migrations.RenameField(
            model_name='article',
            old_name='content',
            new_name='text',
        ),
        migrations.RemoveField(
            model_name='article',
            name='source',
        ),
        migrations.AddField(
            model_name='article',
            name='link',
            field=models.URLField(default=django.utils.timezone.now),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='article',
            name='verification',
            field=models.IntegerField(default=0),
        ),
    ]
