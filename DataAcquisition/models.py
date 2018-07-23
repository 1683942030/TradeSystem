from django.db import models
import time


# 存储当前实时价格
class KLineDataRealTime(models.Model):
    k_id = models.CharField(max_length=20)
    amount = models.CharField(max_length=20)
    count = models.CharField(max_length=20)
    open = models.CharField(max_length=20)
    close = models.CharField(max_length=20)
    high = models.CharField(max_length=20)
    vol = models.CharField(max_length=20)
    time = models.DateTimeField(default=time.time())


# 存储历史所有价格
class KLineData(models.Model):
    k_id = models.CharField(max_length=20)
    amount = models.CharField(max_length=20)
    count = models.CharField(max_length=20)
    open = models.CharField(max_length=20)
    close = models.CharField(max_length=20)
    high = models.CharField(max_length=20)
    vol = models.CharField(max_length=20)
    time = models.DateTimeField(default=time.time())

