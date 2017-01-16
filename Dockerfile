FROM alpine

ARG version=0.18.1

ADD https://github.com/spf13/hugo/releases/download/v${version}/hugo_${version}_Linux-64bit.tar.gz /srv/hugo/
RUN mv /srv/hugo/hugo_${version}_linux_amd64 /bin/hugo && rm -rf /srv/hugo
