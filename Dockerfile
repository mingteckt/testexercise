FROM alpine:3.19

RUN apk add bash
RUN apk add python3
RUN apk add py3-flask

RUN adduser -D -u 1000 serveruser
USER serveruser

WORKDIR /app
COPY . .

CMD python3 /app/simpleserver.py
