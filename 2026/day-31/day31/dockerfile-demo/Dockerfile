FROM ubuntu:latest

RUN apt update && apt install -y curl

WORKDIR /app

COPY app.txt /app/

EXPOSE 8080

CMD ["cat", "app.txt"]
