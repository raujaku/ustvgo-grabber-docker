# USTVGO GRABBER - DOCKER
Docker image of https://github.com/benmoose39/ustvgo_to_m3u designed to grab M3U links every three hours from the USTVGO service.

# DOCKER COMPOSE EXAMPLE
```yaml
version: '2'
services:
  ustvgo:
    image: raujaku/ustvgo-to-m3u-vpn
    container_name: ustvgo
    volumes:
      - /host/folder:/iptv
```

# HOW IT WORKS
In order for the script to work properly it needs a channel list (ustvgo_channel_info.txt) in the "iptv" folder. You can obtain a template of this file in this repo or from the original project's repo (https://raw.githubusercontent.com/benmoose39/ustvgo_to_m3u/main/ustvgo_channel_info.txt). This file can be modified to include only the channels you are interested in adding to your M3U file by removing the entries for other channels.

Once the above file is placed in the "iptv" folder the container will run a python script every three hours which will produce an M3U playlist of your selected channels and save it to the "iptv" folder with the name "ustvgo.m3u".
