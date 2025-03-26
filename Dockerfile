FROM golang:1.24 AS builder

WORKDIR /build_app

COPY src/hello.go .

RUN go mod init first/hello

RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o hello hello.go

FROM scratch AS release-stage

WORKDIR /app

COPY --from=builder /build_app/hello .

ENTRYPOINT ["./hello"]

