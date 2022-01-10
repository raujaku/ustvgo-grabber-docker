FROM python:3.9.7-alpine3.14

COPY . .

RUN apk upgrade --update --no-cache \
    && apk add --no-cache \
    curl

RUN pip install -r requirements.txt
RUN crontab crontab

ENV xTeveIP= \
    xTevePORT=34400

CMD ["crond", "-f"]
