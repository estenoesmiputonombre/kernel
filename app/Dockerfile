
FROM golang:latest

#ENV GOPATH /home/local/go

WORKDIR $GOPATH/src/estenoesmiputonombre
COPY server ./

ENV PORT 8080
#ENV ADDR localhost

RUN ["/bin/sh", "-c", "echo The server will deploy on ${ADDR}:${PORT} "]

EXPOSE $PORT

CMD go run main.go
