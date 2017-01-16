FROM alpine
RUN apk add --no-cache --virtual=build-dependencies wget ca-certificates

ARG version=0.18.1

RUN wget -O - https://github.com/spf13/hugo/releases/download/v${version}/hugo_${version}_Linux-64bit.tar.gz \
  | tar -O -xzf - hugo_${version}_linux_amd64/hugo_${version}_linux_amd64 > /bin/hugo \
 && chmod +x /bin/hugo \
 && apk del build-dependencies
