FROM docker.io/library/alpine:3.13

LABEL 'com.github.actions.name'='PHP composer'
LABEL 'com.github.actions.description'='Run PHP composer'

RUN apk --no-cache add \
    composer=~2 \
    git=~2 \
    openssh-client=~8.4 \
    php7-ctype=~7.4 \
    php7-dom=~7.4 \
    php7-simplexml=~7.4 \
    php7-sockets=~7.4 \
    php7-tokenizer=~7.4 \
    php7-xml=~7.4 \
    php7-xmlwriter=~7.4

ENTRYPOINT [ "/usr/bin/composer" ]

WORKDIR /app
