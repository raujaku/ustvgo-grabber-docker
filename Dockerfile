FROM python:3.6.12-alpine3.12

COPY . .

RUN pip install -r requirements.txt
RUN addgroup -g 1000 ustv
RUN adduser -g 1000 -u 1000 ustv
RUN chown -R ustv:ustv /

USER ustv

RUN crontab crontab

CMD ["crond", "-f"]
