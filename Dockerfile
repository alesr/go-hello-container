FROM golang:1.6-wheezy

RUN git clone https://github.com/alesr/go-hello-container.git src/github.com/alesr/go-hello-container

WORKDIR src/github.com/alesr/go-hello-container

RUN go build

ENTRYPOINT ["./go-hello-container"]

CMD ["Hello, Go"]

EXPOSE 8080
