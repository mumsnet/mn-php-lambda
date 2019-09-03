FROM lambci/lambda:build-nodejs8.10

RUN mkdir /opt/php-lambda
WORKDIR /opt/php-lambda
RUN curl -sL https://www.openssl.org/source/openssl-1.1.1c.tar.gz | tar -xz && \
    cd openssl-1.1.1c && \
    ./config --prefix=/opt/openssl --openssldir=/opt/openssl && \
    make && \
    make install && \
    cd /opt/php-lambda && \
	curl -sL https://github.com/php/php-src/archive/php-7.3.9.tar.gz | tar -xz && \
    cd php-src-php-7.3.9 && \
    ./buildconf --force && \
    ./configure --prefix=/opt/php/ \
    	--without-pear \
    	--enable-bcmath \
    	--with-bz2 \
    	--enable-calendar \
    	--with-curl \
    	--enable-exif \
    	--enable-ftp \
    	--with-gettext \
    	--enable-mbstring \
    	--with-mysqli \
    	--enable-mysqlnd \
    	--with-openssl=/opt/openssl \
    	--with-pdo-mysql \
    	--enable-shmop \
    	--enable-sockets \
    	--enable-sysvmsg \
    	--enable-sysvsem \
    	--enable-sysvshm \
    	--enable-wddx \
    	--with-xsl \
    	--with-zlib && \
    make install && \
	curl -sS https://getcomposer.org/installer | /opt/php/bin/php -- --install-dir=/opt/php/bin/ --filename=composer && \
	echo '#!/bin/sh' >  /usr/bin/php && \
	echo 'exec /opt/php/bin/php $*' >> /usr/bin/php && \
	chmod 755 /usr/bin/php && \
	echo '#!/bin/sh' >  /usr/bin/composer && \
	echo 'exec /opt/php/bin/php /opt/php/bin/composer $*' >> /usr/bin/composer && \
	chmod 755 /usr/bin/composer
