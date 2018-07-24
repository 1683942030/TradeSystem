from django.contrib import admin
from .models import TradeParis, Kline5Min, Kline15Min, Kline30Min, Kline1H, Kline4H, Kline1D


@admin.register(TradeParis)
class TradeParisAdmin(admin.ModelAdmin):
    list_display = ('id', 'base_currency', 'aim_currency')
    list_per_page = 50


@admin.register(Kline5Min)
class Kline5MinAdmin(admin.ModelAdmin):
    list_display = ('id', 'trad_pari', 'k_id', 'amount', 'count', 'open', 'close', 'high', 'vol')
    list_per_page = 50


@admin.register(Kline15Min)
class Kline15MinAdmin(admin.ModelAdmin):
    list_display = ('id', 'trad_pari', 'k_id', 'amount', 'count', 'open', 'close', 'high', 'vol')
    list_per_page = 50


@admin.register(Kline30Min)
class Kline30MinAdmin(admin.ModelAdmin):
    list_display = ('id', 'trad_pari', 'k_id', 'amount', 'count', 'open', 'close', 'high', 'vol')
    list_per_page = 50


@admin.register(Kline1H)
class Kline1HAdmin(admin.ModelAdmin):
    list_display = ('id', 'trad_pari', 'k_id', 'amount', 'count', 'open', 'close', 'high', 'vol')
    list_per_page = 50


@admin.register(Kline4H)
class Kline4HAdmin(admin.ModelAdmin):
    list_display = ('id', 'trad_pari', 'k_id', 'amount', 'count', 'open', 'close', 'high', 'vol')
    list_per_page = 50


@admin.register(Kline1D)
class Kline1DMinAdmin(admin.ModelAdmin):
    list_display = ('id', 'trad_pari', 'k_id', 'amount', 'count', 'open', 'close', 'high', 'vol')
    list_per_page = 50
