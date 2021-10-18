FROM python:3.6.12-alpine3.12

COPY . .

RUN pip install -r requirements.txt
RUN addgroup -gid 1000 ustv
RUN adduser -gid 1000 -uid 1000 ustv
RUN chown -R ustv:ustv /

USER ustv

RUN crontab crontab

CMD ["crond", "-f"]
