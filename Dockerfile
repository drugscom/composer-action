FROM docker.io/library/alpine:3.14.0

LABEL 'com.github.actions.name'='PHP composer'
LABEL 'com.github.actions.description'='Run PHP composer'

RUN apk --no-cache add \
    git=~2 \
    openssh-client=~8.6 \
    php8=~8.0 \
    php8-ctype=~8.0 \
    php8-curl=~8.0 \
    php8-dom=~8.0 \
    php8-mbstring=~8.0 \
    php8-openssl=~8.0 \
    php8-phar=~8.0 \
    php8-simplexml=~8.0 \
    php8-sockets=~8.0 \
    php8-tokenizer=~8.0 \
    php8-xml=~8.0 \
    php8-xmlwriter=~8.0 \
    && ln -s /usr/bin/php8 /usr/local/bin/php

RUN wget -q -O /usr/local/bin/composer 'https://getcomposer.org/download/2.1.3/composer.phar' \
    && chmod +x /usr/local/bin/composer

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

WORKDIR /app
