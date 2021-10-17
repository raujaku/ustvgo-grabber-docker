FROM python:3.6.12-alpine3.12

COPY . .

RUN mkdir /iptv

VOLUME /iptv

ADD https://raw.githubusercontent.com/benmoose39/ustvgo_to_m3u/main/ustvgo_channel_info.txt /iptv/ustvgo_channel_info.txt

RUN pip install -r requirements.txt

RUN crontab crontab

CMD ["crond", "-f"]
