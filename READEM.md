# Caddy

Common Image:

`ghcr.io/geektheripper/caddy:latest`

```
caddy +
    github.com/caddy-dns/acmedns
    github.com/caddy-dns/alidns
    github.com/caddy-dns/cloudflare
    github.com/caddy-dns/powerdns
    github.com/caddy-dns/route53
    github.com/gerolf-vent/caddy-vault-storage
    github.com/geektheripper/caddy-fs-s3
    github.com/mholt/caddy-l4
```

Inpod Image:

used in kubernetes behind ingress

`ghcr.io/geektheripper/caddy/caddy-inpod:latest`

```
caddy +
    github.com/mholt/caddy-l4
    github.com/mohammed90/caddy-git-fs
    github.com/geektheripper/caddy-fs-s3
    github.com/greenpau/caddy-security
```

TODO:

if `docker run -it caddy:builder go version` > `1.24`, remove `GOTOOLCHAIN=go1.24.1` from all Dockerfile
