FROM python:3.6.12-alpine3.12

COPY . .

RUN pip install -r requirements.txt
RUN chmod -R 777 /iptv

RUN crontab crontab

CMD ["crond", "-f"]
