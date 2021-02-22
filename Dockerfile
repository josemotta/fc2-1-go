FROM golang:1.14.3-alpine AS build
WORKDIR /src
COPY . .
RUN go build -ldflags="-w -s" -o /go/bin/rocks .

FROM scratch AS bin
COPY --from=build /go/bin/rocks /go/bin/rocks
ENTRYPOINT [ "/go/bin/rocks" ]
