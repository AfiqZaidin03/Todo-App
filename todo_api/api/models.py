from django.db import models

# Create your models here.

class Task(models.Model):
    body = models.TextField()
    updated = models.DateTimeField(auto_now=True)
    created = models.DateTimeField(auto_now_add=True)

    def _str_(self):
        return self.body[0:50]
    
    class Meta: 
        ordering = ['-updated']