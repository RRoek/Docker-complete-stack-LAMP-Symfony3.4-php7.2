FROM php:7.2-apache-stretch

ADD bin/docker-* /usr/bin/

RUN pecl install redis \
    && pecl install xdebug \
    && pecl install apcu \
    && docker-php-ext-enable redis xdebug apcu

# Dependencies
RUN docker-apt-install libicu-dev\
    zlib1g-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    git \
    python \
    wkhtmltopdf \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install calendar intl mbstring pdo_mysql zip gd

RUN apt-get update && apt-get install -my wget gnupg

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
&& apt-get install -y nodejs

RUN npm install -g bower
RUN npm install -g less
RUN npm install -g gulp
RUN npm install -g gulp-clean
RUN npm install -g gulp-concat
RUN npm install -g gulp-jquery-closure
RUN npm install -g gulp-order
RUN npm install -g gulp-if
RUN npm install -g gulp-livereload
RUN npm install -g gulp-less
RUN npm install -g gulp-rename
RUN npm install -g gulp-uglify
RUN npm install -g gulp-uglifycss
RUN npm install -g gulp-jshint
RUN npm install -g jshint
RUN ln -s /usr/bin/node /usr/local/bin/node
RUN ln -s /usr/lib/node_modules /usr/local/lib/node_modules

COPY php.ini $PHP_INI_DIR/conf.d/z_docker.ini


#RUN pecl install rdkafka

# Composer
RUN curl -k -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ADD entrypoint /sbin/entrypoint

WORKDIR /var/www/html/YourCompany/your_company-client


