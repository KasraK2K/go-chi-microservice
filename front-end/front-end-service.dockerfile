FROM alpine:latest

RUN mkdir /app

COPY frontApp /app
COPY templates /templates

CMD [ "/app/frontApp" ]