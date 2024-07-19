FROM ubuntu

RUN apt-get update && \
    apt-get  install apache2 -y && \
    apt-get clean

COPY . .

CMD [ "apachectl", "-D", "FOREGROUND" ]

EXPOSE 80