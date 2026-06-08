FROM golang:1.20-alpine

RUN mkdir /app


RUN addgroup -S arlogroup
RUN adduser -S -D -h /app arlodel arlogroup
RUN chown -R arlodel:arlogroup /app
USER arlodel

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go