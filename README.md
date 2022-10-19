# [sgtsquiggs/caddy-auth-portal](https://hub.docker.com/repository/docker/sgtsquiggs/caddy-security)

For configuration please see:

- [caddy-security](https://github.com/greenpau/caddy-security)

## Example:

### docker-compose.yml

```yaml
version: "2.4"

services:
  portal:
    image: sgtsquiggs/caddy-auth-portal
    volumes:
      - /path/to/configs/portal/Caddyfile:/etc/caddy/Caddyfile:ro
      - /path/to/data/portal/users.json:/etc/caddy/auth/local/users.json
    ports:
      - 8080:8080
      - 8443:8443
    depends_on:
      - prometheus
  prometheus:
    image: prom/prometheus
    volumes:
      - /path/to/configs/prometheus:/etc/prometheus
      - /path/to/data/prometheus:/prometheus
    command: --web.enable-lifecycle  --config.file=/etc/prometheus/prometheus.yml
```
