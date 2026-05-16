from celery.signals import task_prerun, task_postrun, task_failure, task_retry
import logging

logger = logging.getLogger(__name__)


@task_prerun.connect
def task_started(sender=None, task_id=None, **kwargs):
    logger.info("[%s] STARTED: %s", task_id, sender.name)


@task_postrun.connect
def task_success(sender=None, task_id=None, retval=None, **kwargs):
    logger.info("[%s] SUCCESS: %s", task_id, sender.name)


@task_failure.connect
def task_failed(sender=None, task_id=None, exception=None, **kwargs):
    logger.error("[%s] FAILURE: %s | %s", task_id, sender.name, exception)


@task_retry.connect
def task_retried(sender=None, task_id=None, reason=None, **kwargs):
    logger.warning("[%s] RETRY: %s | %s", task_id, sender.name, reason)

