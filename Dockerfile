FROM ubuntu
MAINTAINER tabrezid54
RUN apt-get -y update
RUN apt-get install -y apache2 \
  zip\
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/complex.zip /var/www/html
WORKDIR /var/www/html
RUN unzip complex.zip
RUN cp -rfv complex/* .
RUN rm -rf complex.zip
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80
