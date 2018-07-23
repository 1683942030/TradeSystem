from django.shortcuts import render, render_to_response

from apscheduler.schedulers.background import BackgroundScheduler
from django_apscheduler.jobstores import DjangoJobStore, register_events, register_job

scheduler = BackgroundScheduler()
scheduler.add_jobstore(DjangoJobStore(), "default")


@register_job(scheduler, "interval", seconds=2)
def test_job():
    print("I'm a test job!")


register_events(scheduler)
scheduler.start()
print("Scheduler started!")
