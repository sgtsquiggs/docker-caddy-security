FROM caddy:builder-alpine AS builder

RUN xcaddy build --with github.com/greenpau/caddy-security@v1.1.15

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

COPY /root/ /
