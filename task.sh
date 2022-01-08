#!/bin/sh

python3 task.py
sleep 5

curl -X POST -d '{"cmd":"update.m3u"}' http://$xTeveIP:$xTevePORT/api/
sleep 5

curl -X POST -d '{"cmd":"update.xmltv"}' http://$xTeveIP:$xTevePORT/api/
sleep 5

curl -X POST -d '{"cmd":"update.xepg"}' http://$xTeveIP:$xTevePORT/api/
sleep 5
