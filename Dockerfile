FROM alpine:3.12

RUN apk add --no-cache libc6-compat
ARG version
RUN wget https://github.com/cli/cli/releases/download/v${version}/gh_${version}_linux_amd64.tar.gz
RUN tar -zxf gh_${version}_linux_amd64.tar.gz
RUN mv ./gh_${version}_linux_amd64/bin/* /usr/local/bin/
RUN rm -rf ./gh_*

ENTRYPOINT gh
