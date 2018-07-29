FROM alpine:3.7
RUN apk add --update --no-cache rsync
ENTRYPOINT ["/usr/bin/rsync"]
CMD ["--version"]
