FROM php:8.1.16-fpm
# RUN apt-get update
# RUN apt-get install -y zlib1g-dev libpng-dev libicu-dev libzip-dev libssl-dev libsnmp-dev 
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y zlib1g-dev libpng-dev libicu-dev libzip-dev libssl-dev libsnmp-dev
RUN apt-get install -y librdkafka-dev libtool automake libcppunit-dev
RUN apt-get install -y vim wget librabbitmq-dev libzookeeper-mt-dev libmongoc-dev
RUN mkdir -p /usr/src/php/ext/redis && curl -L "https://pecl.php.net/get/redis-5.3.7.tgz" | tar xvz -C /usr/src/php/ext/redis --strip 1
# RUN mkdir -p /usr/src/php/ext/swoole && curl -L "https://pecl.php.net/get/swoole-4.8.12.tgz" | tar xvz -C /usr/src/php/ext/swoole --strip 1
RUN mkdir -p /usr/src/php/ext/xdebug && curl -L "https://github.com/xdebug/xdebug/archive/3.1.0.tar.gz" | tar xvz -C /usr/src/php/ext/xdebug --strip 1
RUN mkdir -p /usr/src/php/ext/kafka && curl -L "https://pecl.php.net/get/rdkafka-6.0.3.tgz" | tar xvz -C /usr/src/php/ext/kafka --strip 1
RUN mkdir -p /usr/src/php/ext/zookeeper && curl -L "https://pecl.php.net/get/zookeeper-1.2.1.tgz" | tar xvz -C /usr/src/php/ext/zookeeper --strip 1
RUN mkdir -p /usr/src/php/ext/amqp && curl -L "https://pecl.php.net/get/amqp-1.11.0.tgz" | tar xvz -C /usr/src/php/ext/amqp --strip 1
RUN pecl install mongodb &&  echo "extension=mongodb.so" > $PHP_INI_DIR/conf.d/docker-php-ext-mongodb.ini
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
RUN docker-php-ext-install pcntl
RUN docker-php-ext-install xdebug
# RUN docker-php-ext-install swoole
RUN pecl install swoole && echo "extension=swoole.so" > $PHP_INI_DIR/conf.d/docker-php-ext-swoole.ini
RUN docker-php-ext-install kafka
RUN docker-php-ext-install amqp
RUN docker-php-ext-install zookeeper
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
#
#RUN mkdir /etc/yum.repos.d \
#&& vim CentOS-Base.repo