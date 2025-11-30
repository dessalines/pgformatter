# syntax=docker/dockerfile:1.18
FROM alpine:3

LABEL org.opencontainers.image.authors="Dessalines"
LABEL org.opencontainers.image.source="https://github.com/dessalines/pgformatter"
LABEL org.opencontainers.image.licenses="AGPL-3.0-or-later"
LABEL org.opencontainers.image.description="A docker image for darold/pgFormatter"

ARG version=5.8

RUN apk add perl make

RUN wget https://github.com/darold/pgFormatter/archive/refs/tags/v${version}.tar.gz -q; \
  tar xzf v${version}.tar.gz; \
  cd pgFormatter-${version}/; \
  perl Makefile.PL; \
  make && make install; \
  cd ../ && rm -rf v${version}.tar.gz && rm -rf pgFormatter-${version}

WORKDIR /app
ENTRYPOINT [ "/usr/local/bin/pg_format" ]
