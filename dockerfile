FROM ubuntu
MAINTAINER ubuntuhost <qictbello@tip.edu.ph>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update; apt dist-upgrade -y

RUN apt install -y apache2 htop

COPY index.html /var/www/html/

EXPOSE 80

ENTRYPOINT apache2ctl -D FOREGROUND
