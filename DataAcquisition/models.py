from django.db import models


class Kline15Min(models.Model):
    id = models.BigAutoField(primary_key=True)
    trad_pari = models.ForeignKey('TradeParis', models.DO_NOTHING, db_column='trad_pari')
    k_id = models.CharField(max_length=20)
    amount = models.CharField(max_length=20)
    count = models.CharField(max_length=20)
    open = models.CharField(max_length=20)
    close = models.CharField(max_length=20)
    high = models.CharField(max_length=20)
    vol = models.CharField(max_length=20)
    field_time = models.DateTimeField(db_column='_time')  # Field renamed because it started with '_'.

    class Meta:
        managed = False
        db_table = 'kline_15min'


class Kline1D(models.Model):
    id = models.BigAutoField(primary_key=True)
    trad_pari = models.ForeignKey('TradeParis', models.DO_NOTHING, db_column='trad_pari')
    k_id = models.CharField(max_length=20)
    amount = models.CharField(max_length=20)
    count = models.CharField(max_length=20)
    open = models.CharField(max_length=20)
    close = models.CharField(max_length=20)
    high = models.CharField(max_length=20)
    vol = models.CharField(max_length=20)
    field_time = models.DateTimeField(db_column='_time')  # Field renamed because it started with '_'.

    class Meta:
        managed = False
        db_table = 'kline_1d'


class Kline1H(models.Model):
    id = models.BigAutoField(primary_key=True)
    trad_pari = models.ForeignKey('TradeParis', models.DO_NOTHING, db_column='trad_pari')
    k_id = models.CharField(max_length=20)
    amount = models.CharField(max_length=20)
    count = models.CharField(max_length=20)
    open = models.CharField(max_length=20)
    close = models.CharField(max_length=20)
    high = models.CharField(max_length=20)
    vol = models.CharField(max_length=20)
    field_time = models.DateTimeField(db_column='_time')  # Field renamed because it started with '_'.

    class Meta:
        managed = False
        db_table = 'kline_1h'


class Kline30Min(models.Model):
    id = models.BigAutoField(primary_key=True)
    trad_pari = models.ForeignKey('TradeParis', models.DO_NOTHING, db_column='trad_pari')
    k_id = models.CharField(max_length=20)
    amount = models.CharField(max_length=20)
    count = models.CharField(max_length=20)
    open = models.CharField(max_length=20)
    close = models.CharField(max_length=20)
    high = models.CharField(max_length=20)
    vol = models.CharField(max_length=20)
    field_time = models.DateTimeField(db_column='_time')  # Field renamed because it started with '_'.

    class Meta:
        managed = False
        db_table = 'kline_30min'


class Kline4H(models.Model):
    id = models.BigAutoField(primary_key=True)
    trad_pari = models.ForeignKey('TradeParis', models.DO_NOTHING, db_column='trad_pari')
    k_id = models.CharField(max_length=20)
    amount = models.CharField(max_length=20)
    count = models.CharField(max_length=20)
    open = models.CharField(max_length=20)
    close = models.CharField(max_length=20)
    high = models.CharField(max_length=20)
    vol = models.CharField(max_length=20)
    field_time = models.DateTimeField(db_column='_time')  # Field renamed because it started with '_'.

    class Meta:
        managed = False
        db_table = 'kline_4h'


class Kline5Min(models.Model):
    id = models.BigAutoField(primary_key=True)
    trad_pari = models.ForeignKey('TradeParis', models.DO_NOTHING, db_column='trad_pari')
    k_id = models.CharField(max_length=20)
    amount = models.CharField(max_length=20)
    count = models.CharField(max_length=20)
    open = models.CharField(max_length=20)
    close = models.CharField(max_length=20)
    high = models.CharField(max_length=20)
    vol = models.CharField(max_length=20)
    field_time = models.DateTimeField(db_column='_time')  # Field renamed because it started with '_'.

    class Meta:
        managed = False
        db_table = 'kline_5min'


class TradeParis(models.Model):
    id = models.BigAutoField(primary_key=True)
    base_currency = models.CharField(max_length=50)
    aim_currency = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'trade_paris'

    def __str__(self):
        return '%s:%s' % (self.base_currency, self.aim_currency)
