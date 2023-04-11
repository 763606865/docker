FROM php:7.4-fpm
RUN apt-get update \
&& apt-get install -y \
    zlib1g-dev \
    libpng-dev \
    libicu-dev \
    libzip-dev \
    libssl-dev \
    libsnmp-dev \
    vim \
&& mkdir -p /usr/src/php/ext/redis \
&& curl -L "https://github.com/phpredis/phpredis/archive/5.3.7.tar.gz" | tar xvz -C /usr/src/php/ext/redis --strip 1 \
&& mkdir -p /usr/src/php/ext/mongodb \
&& curl -L "https://pecl.php.net/get/mongodb-1.12.1.tgz" | tar xvz -C /usr/src/php/ext/mongodb --strip 1 \
&& mkdir -p /usr/src/php/ext/xdebug \
&& curl -L "https://github.com/xdebug/xdebug/archive/3.1.0.tar.gz" | tar xvz -C /usr/src/php/ext/xdebug --strip 1 \
&& docker-php-ext-install gd \
&& docker-php-ext-install mysqli \
&& docker-php-ext-install pdo_mysql \
&& docker-php-ext-install intl \
&& docker-php-ext-install sockets \
&& docker-php-ext-install zip \
&& docker-php-ext-install ftp \
&& docker-php-ext-install bcmath \
&& docker-php-ext-install snmp \
&& docker-php-ext-install redis \
&& docker-php-ext-install mongodb \
&& docker-php-ext-install xdebug \
&& docker-php-ext-install pcntl \
&& curl -sS https://getcomposer.org/installer | php \
&& mv composer.phar /usr/local/bin/composer \
#
#RUN mkdir /etc/yum.repos.d \
#&& vim CentOS-Base.repo
