FROM python:3.9.7-alpine3.14

COPY . .

RUN pip install -r requirements.txt
RUN crontab crontab

CMD ["crond", "-f"]
