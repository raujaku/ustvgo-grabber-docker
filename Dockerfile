FROM python:3.6.12-alpine3.12

COPY . .

RUN mkdir /iptv

ADD ustvgo_channel_info.txt /iptv/ustvgo_channel_info.txt

VOLUME /iptv

RUN pip install -r requirements.txt

RUN crontab crontab

CMD ["crond", "-f"]
