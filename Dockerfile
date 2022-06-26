FROM golang:1.17.1-alpine3.13 AS builder

RUN apk add curl python3
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && \
    chmod a+rx /usr/local/bin/yt-dlp
WORKDIR /go/src
COPY . .
CMD ["go","build","main.go"]

FROM alpine:3.13
COPY --from=builder /go/src/main /main
ENTRYPOINT [ "/main" ]