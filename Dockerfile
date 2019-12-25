FROM alpine:3.9.2

RUN apk add --update \
    samba-common-tools \
    samba-client \
    samba-server \
    tini \
    && rm -rf /var/cache/apk/*

EXPOSE 445/tcp

ENTRYPOINT ["/sbin/tini", "--", "smbd", "--foreground", "--log-stdout", "--no-process-group"]
CMD []

