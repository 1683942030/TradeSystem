from django.shortcuts import render, render_to_response
from .HuoBiUtils import MARKET_URL, http_get_request

from apscheduler.schedulers.background import BackgroundScheduler
from django_apscheduler.jobstores import DjangoJobStore, register_events, register_job

scheduler = BackgroundScheduler()
scheduler.add_jobstore(DjangoJobStore(), "default")


@register_job(scheduler, "interval", seconds=60)
def test_job():
    try:
        print(get_kline('usdt', 'btc'))
    except TimeoutError:
        print(TimeoutError)


register_events(scheduler)
scheduler.start()
# print("Scheduler started!")


def get_kline(base_currency, aim_currency, period='5min', size=50):
    symbol = aim_currency + base_currency
    params = {'symbol': symbol, 'period': period, 'size': size}
    url = MARKET_URL + '/market/history/kline'
    return http_get_request(url, params)
