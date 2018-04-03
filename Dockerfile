FROM UBUNTU:14.04

maintainer Yogesh Bhujbal bhujbalyogesh123@gmail.com
run apt-get update -y && apt-get install -y curl vim apache2 wget
COPY index.html /var/www/html/
EXPOSE 80
entrypoint ["/usr/sbin/apachectl","-DFOREGROUND"]

