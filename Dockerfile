FROM alpine:3.7

ARG TIMEZONE=Asia/Shanghai

RUN apk add --update --no-cache rsync openssh
RUN apk add --update --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "$TIMEZONE" > /etc/timezone && \
    apk del tzdata
    
ENTRYPOINT ["/usr/bin/rsync"]
CMD ["--version"]
