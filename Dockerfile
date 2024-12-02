FROM ubuntu/apache2
RUN apt update
COPY . /var/www/html
