FROM php:7.3-fpm
RUN apt-get update
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libpng-dev
RUN apt-get install -y libicu-dev
RUN apt-get install -y libzip-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y libsnmp-dev 
RUN apt-get install -y vim
RUN mkdir -p /usr/src/php/ext/redis && curl -L "https://github.com/phpredis/phpredis/archive/5.3.7.tar.gz" | tar xvz -C /usr/src/php/ext/redis --strip 1
RUN mkdir -p /usr/src/php/ext/mongodb && curl -L "https://pecl.php.net/get/mongodb-1.12.1.tgz" | tar xvz -C /usr/src/php/ext/mongodb --strip 1
RUN mkdir -p /usr/src/php/ext/xdebug && curl -L "https://github.com/xdebug/xdebug/archive/3.1.0.tar.gz" | tar xvz -C /usr/src/php/ext/xdebug --strip 1
RUN docker-php-ext-install gd
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install intl
RUN docker-php-ext-install sockets
RUN docker-php-ext-install zip
RUN docker-php-ext-install ftp
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install snmp
RUN docker-php-ext-install redis
RUN docker-php-ext-install mongodb
RUN docker-php-ext-install xdebug
RUN docker-php-ext-install pcntl
RUN pecl install xlswriter && echo "extension=xlswriter.so" > $PHP_INI_DIR/conf.d/docker-php-ext-xlswriter.ini
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
#
#RUN mkdir /etc/yum.repos.d \
#&& vim CentOS-Base.repo