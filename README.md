# Services

This repo contains some services that I'm running on my local server.

This is mostly useful for myself to keep some documentation and make things reusable. If it's useful to others even better.


## Home Assistant proxy config

Given that Home Assistant works best when it runs using the host network and you can't use both `network_mode: host` and the `traefik-net` network I had to add an Nginx proxy that is connected to `traefik-net` but forwards requests to the Home Assistant container.

Home Assistant needs also to be configured to accept connections coming from the Nginx proxy so I had this part to its `configuration.yaml`.

```configuration.yaml
http:
  use_x_forwarded_for: true
  trusted_proxies:
    - 172.18.0.0/16
```