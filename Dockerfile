FROM caddy:builder AS builder

RUN HTTP_PROXY=$PROXY_URL HTTPS_PROXY=$PROXY_URL xcaddy build \
    --with github.com/mholt/caddy-l4 \
    --with github.com/caddy-dns/alidns \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddy-dns/route53 \
    --with github.com/caddy-dns/powerdns

FROM caddy

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
