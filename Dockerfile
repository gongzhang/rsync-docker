FROM alpine:3.7
RUN apk add --update --no-cache rsync openssh tzdata
ENTRYPOINT ["/usr/bin/rsync"]
CMD ["--version"]
