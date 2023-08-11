FROM python:3.10-slim-buster


ENV PYTHONUNBUFFERED 1
WORKDIR /app

COPY ./requirements.txt /requirements.txt
COPY . /app
COPY ./docker/server-entrypoint.sh /docker/django/server-entrypoint.sh

EXPOSE 8000
RUN : \
    && pip install -r /requirements.txt \
    && chmod +x /docker/django/server-entrypoint.sh \
    && :

ENTRYPOINT ["/docker/django/server-entrypoint.sh"]