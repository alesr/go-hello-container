FROM golang:1.6-wheezy

COPY . src/github.com/alesr/go-hello-container

WORKDIR src/github.com/alesr/go-hello-container

RUN go build

ENTRYPOINT ["./go-hello-container"]

CMD ["Hello, World"]

EXPOSE 8080
