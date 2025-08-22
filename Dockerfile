FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o /accessapp ./cmd/accessapp

FROM alpine:3.18
RUN apk add --no-cache ca-certificates
COPY --from=builder /accessapp /accessapp
EXPOSE 8080
ENTRYPOINT ["/accessapp"]
