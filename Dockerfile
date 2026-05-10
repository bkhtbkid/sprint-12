FROM golang:1.25

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 COOS=linux GOARCH=amd64 go build -o /sprint-12

CMD [ "/sprint-12" ]
