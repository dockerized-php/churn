FROM alpine:3.8
MAINTAINER Tommy Muehle <tommy.muehle@gmail.com>

ENV COMPOSER_HOME /composer
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV PATH /composer/vendor/bin:$PATH

COPY --from=composer:1.8.0 /usr/bin/composer /usr/local/bin/composer

RUN apk --update --progress --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.8/community add \
    curl \
    git \
    php7 \
    php7-ctype \
    php7-json \
    php7-iconv \
    php7-openssl \
    php7-phar \
    php7-zlib \
    php7-mbstring \
    php7-xml \
  && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

VOLUME /app
WORKDIR /app

ENTRYPOINT ["churn"]
