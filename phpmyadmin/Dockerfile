FROM alpine

RUN apk add --no-cache php-cli php-mysqli php-ctype php-xml php-gd php-zlib php-openssl php-curl php-opcache php-json php-mcrypt curl

RUN curl --location https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz | tar xzf - \
 && mv phpMyAdmin* /www \
 && rm -rf /www/js/jquery/src/ /www/examples /www/po/

COPY config.inc.php /www/
COPY run.sh /run.sh
RUN chmod u+rwx /run.sh

RUN wget https://github.com/jwilder/dockerize/releases/download/v0.1.0/dockerize-linux-amd64-v0.1.0.tar.gz
RUN tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.1.0.tar.gz

EXPOSE 80

ENV PHP_UPLOAD_MAX_FILESIZE=64M \
    PHP_MAX_INPUT_VARS=2000

ENTRYPOINT [ "/run.sh" ]
