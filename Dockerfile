FROM alpine:3.10.0 as build

RUN apk add --update --no-cache \
  crystal=0.29.0-r0 \
  shards=0.9.0-r0 \
  alpine-sdk=1.0-r0 \
  yaml-dev=0.2.2-r1 \
  zlib-dev=1.2.11-r1 \
  libressl-dev=2.7.5-r0 \
  libressl2.7-libcrypto=2.7.5-r0 \
  libevent-static=2.1.10-r0

WORKDIR /usr/src/app

COPY shard.yml shard.lock ./

RUN shards install --production

COPY . .

RUN mkdir -p ./bin \
  && crystal build --release --static ./src/app.cr -o ./bin/app



FROM scratch

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/bin/app ./bin/app

ENTRYPOINT ["./bin/app"]
