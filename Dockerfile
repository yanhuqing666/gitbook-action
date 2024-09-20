
FROM zanderzhao/gitbook-action

RUN apt-get update \
  && apt-get install --no-install-recommends --no-install-suggests -y \
    fonts-noto-cjk ttf-mscorefonts-installer \
    fonts-arphic-gbsn00lp \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /tmp/*
  
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
