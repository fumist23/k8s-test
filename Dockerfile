# syntax=docker/dockerfile:1

FROM golang:1.16-alpine

RUN mkdir app

COPY . /app

WORKDIR /app

RUN go mod download

RUN go build -o /k8s-test cmd/main.go

CMD ["/k8s-test"]
