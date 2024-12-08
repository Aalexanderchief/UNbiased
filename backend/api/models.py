from django.db import models
from django.contrib.auth.models import User

from django.db import models

class Article(models.Model):
    title = models.CharField(max_length=350)
    text = models.TextField()
    link = models.URLField(max_length=350)
    summary = models.TextField()
    verification = models.IntegerField(default=0)

    def __str__(self):
        return self.title