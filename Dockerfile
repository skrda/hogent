FROM ubuntu

RUN apt-get update && apt-get install -y apache2 && apt-get clean

WORKDIR /var/www/html

COPY html/ .

# Zorgt dat je op website kunt.
RUN date > /var/www/html/buildtime.txt

# Opent poort 81.
EXPOSE 81

CMD ["apachectl", "-D", "FOREGROUND"]