from celery import signals
import logging

logger = logging.getLogger(__name__)


@signals.task_prerun.connect
def task_started(sender=None, task_id=None, **kwargs):
    logger.info("\n[%s] STARTED: %s", task_id, sender.name)


@signals.task_postrun.connect
def task_success(sender=None, task_id=None, retval=None, **kwargs):
    logger.info("[%s] SUCCESS: %s\n", task_id, sender.name)


@signals.task_failure.connect
def task_failed(sender=None, task_id=None, exception=None, **kwargs):
    logger.error("[%s] FAILURE: %s | %s\n", task_id, sender.name, exception)


@signals.task_retry.connect
def task_retried(sender=None, task_id=None, reason=None, **kwargs):
    logger.warning("[%s] RETRY: %s | %s\n", task_id, sender.name, reason)

