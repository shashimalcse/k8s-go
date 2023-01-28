FROM golang:1.12.0-alpine3.9    

RUN mkdir /app
ADD . /app
WORKDIR /app
EXPOSE 3333
RUN go mod tidy
RUN go build -o server ./cmd/server
ENTRYPOINT ["./server"]