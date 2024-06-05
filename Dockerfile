ARG VERSION=edge
FROM alpine:$VERSION

RUN apk add --update supervisor && rm  -rf /tmp/* /var/cache/apk/*

ADD supervisord.conf /etc/

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]