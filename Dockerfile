FROM php:5-apache

RUN \
 apt-get update && \
 apt-get install -y vim telnet wget axel php5-mysql git

RUN \
 a2enmod rewrite && \
 sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

RUN docker-php-ext-install mysql mysqli pdo pdo_mysql

RUN git clone git://github.com/jasonhinkle/phreeze.git

