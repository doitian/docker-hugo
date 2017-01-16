FROM alpine

ARG version=0.18.1

RUN wget -O - https://github.com/spf13/hugo/releases/download/v${version}/hugo_${version}_Linux-64bit.tar.gz \
 && tar -C /srv -O -xzf - hugo_${version}_linux_amd64/hugo_${version}_linux_amd64 > /bin/hugo \
 && chmod +x /bin/hugo
