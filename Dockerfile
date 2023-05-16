FROM golang:1.20.4-bullseye

WORKDIR /go/src/github.com/MalteHerrmann/build-docker-with-private-dependency

COPY . .

RUN make build

CMD ["build-docker-with-private-dependency"]
