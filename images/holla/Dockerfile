FROM centos:7
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
 systemd-tmpfiles-setup.service ] || rm -f $i; done);  \
rm -f /lib/systemd/system/multi-user.target.wants/* \
rm -f /etc/systemd/system/*.wants/* \
rm -f /lib/systemd/system/local-fs.target.wants/* \
rm -f /lib/systemd/system/sockets.target.wants/*udev* \
rm -f /lib/systemd/system/sockets.target.wants/*initctl* \
rm -f /lib/systemd/system/basic.target.wants/* \
rm -f /lib/systemd/system/anaconda.target.wants/*
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]

RUN yum -y update \
&& yum clean all \
    && yum install -y httpd initscripts gcc gcc-c++ automake autoconf libtool make cmake vim  wget \
    nginx mysql-server redis httpd-tools \
&& alias ll='ls -l' >> ~/.bashrc \
&& source ~/.bashrc \
&& yum install -y php php-cli php-common php-devel php-fpm php-gd php-embedded php-mbstring php-mysqlnd php-opcache php-pdo php-xml \
&& wget https://github.com/phpredis/phpredis/archive/4.0.2.tar.gz  \
&& tar -zxvf 4.0.2.tar.gz  \
&& rm -rf 4.0.2.tar.gz  \
&& cd phpredis-4.0.2  \
&& phpize  \
&& ./configure --with-php-config=/usr/bin/php-config \
&& make && make install \
&& echo 'extension=redis.so' >> /etc/php.ini \
&& cd / \
&& rm -rf /phpredis-4.0.2 \
EXPOSE 80
EXPOSE 6379
EXPOSE 3306
EXPOSE 9000