FROM webdevops/php-apache
RUN apt-get update && apt-get install
ADD https://www.prestashop.com/download/old/prestashop_1.7.4.4.zip /var/www/html
RUN cd /var/www/html && wget https://www.prestashop.com/download/old/prestashop_1.7.4.4.zip && unzip prestashop_1.7.4.4.zip && rm prestashop_1.7.4.4.zip && chown -R 755 /var/www/html
