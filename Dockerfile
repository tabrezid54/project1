FROM ubuntu
MAINTAINER tabrezid54
RUN apt-get -y update
RUN apt-get install -y apache2
RUN echo "This is my First DevOps and CI/CD Pipeline Project..." > /var/www/html/1.html
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80
