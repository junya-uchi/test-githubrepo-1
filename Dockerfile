FROM php:7.3-alpine3.12
 
RUN apk update && apk add --no-cache \
    # apache
    apache2 apache2-ssl \
    # phpパッケージ
    php7-common php7-apache2 php7-ctype php7-fileinfo php7-json php7-mbstring php7-openssl \
    php7-pdo php7-pdo_mysql php7-mysqli \
    php7-tokenizer php7-xml php7-session \
    # 追加
    php7-bz2 php7-calendar php7-exif php7-gettext php7-pecl-imagick php7-pecl-mcrypt php7-pcntl php7-pdo_mysql php7-shmop php7-sockets \
    php7-sysvmsg php7-sysvsem php7-sysvshm php7-wddx php7-xmlrpc php7-xsl php7-zip \
    # タイムゾーン
    tzdata  && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
