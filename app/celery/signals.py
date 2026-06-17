from celery import signals
import logging

logger = logging.getLogger(__name__)


def task_name(sender):
    return sender.name.split(".")[-1]


@signals.worker_ready.connect
def celery_started(**kwargs):
    logger.info("\n=== CELERY STARTED ===\n")


@signals.task_prerun.connect
def task_started(sender=None, **kwargs):
    logger.info("\n[%s] start", task_name(sender))


@signals.task_postrun.connect
def task_success(sender=None, **kwargs):
    logger.info("[%s] success", task_name(sender))


@signals.task_failure.connect
def task_failed(sender=None, exception=None, **kwargs):
    logger.error("[%s] failed: %s", task_name(sender), exception)


@signals.task_retry.connect
def task_retried(sender=None, reason=None, **kwargs):
    logger.warning("[%s] retry: %s", task_name(sender), reason)

