# USTVGO GRABBER - DOCKER
Docker image of https://github.com/benmoose39/ustvgo_to_m3u designed to grab M3U links every three hours from the USTVGO service.

# DOCKER COMPOSE EXAMPLE
```yaml
version: '3.4'
services:
  ustvgo:
    image: ghcr.io/colino17/ustvgo-grabber-docker:latest
    volumes:
      - /host/folder:/iptv
```
