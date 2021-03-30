# safeway-coupons-docker
Docker setup for smkent/safeway-coupons

Example docker-compose:

```
version: "3.3"

services:
  safeway-coupons:
    image: sholiday/safeway-coupons:latest
    volumes:
      - /var/lib/container-data/safeway/safeway.config:/safeway-coupons.config
    restart: unless-stopped
```
