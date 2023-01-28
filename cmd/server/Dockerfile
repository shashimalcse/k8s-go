FROM golang:1.12.0-alpine3.9
RUN mkdir /app
ADD . /app
WORKDIR /app

RUN go mod tidy
RUN make build
RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
