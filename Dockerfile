FROM python:3.6.12-alpine3.12

COPY . .

VOLUME /iptv

RUN pip install -r requirements.txt

RUN crontab crontab

CMD ["crond", "-f"]
