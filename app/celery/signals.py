from celery import signals
import logging

logger = logging.getLogger(__name__)


def task_name(sender):
    return sender.name.split(".")[-1]


def get_request_id(task):
    if not task:
        return None
    request = getattr(task, "request", None)
    if not request:
        return None
    headers = getattr(request, "headers", None)
    if not headers:
        return None
    return headers.get("request_id")


@signals.worker_ready.connect
def celery_started(**kwargs):
    logger.info("===== CELERY STARTED =====")


@signals.task_prerun.connect
def task_started(sender=None, task=None, **kwargs):
    request_id = get_request_id(task)
    logger.info("\n[%s] START request_id=%s", task_name(sender), request_id)


@signals.task_success.connect
def task_success(sender=None, result=None, task=None, **kwargs):
    request_id = get_request_id(task)
    logger.info("[%s] SUCCESS request_id=%s", task_name(sender), request_id)


@signals.task_failure.connect
def task_failed(sender=None, exception=None, task=None, **kwargs):
    request_id = get_request_id(task)
    logger.error(
        "[%s] FAILED error=%s request_id=%s", task_name(sender), exception, request_id
    )


@signals.task_retry.connect
def task_retried(sender=None, reason=None, task=None, **kwargs):
    request_id = get_request_id(task)
    logger.warning(
        "[%s] RETRY reason=%s request_id=%s", task_name(sender), reason, request_id
    )
