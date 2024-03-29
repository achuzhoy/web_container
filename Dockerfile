#FROM docker.io/cyplo/fedora27_base
FROM quay.io/achuzhoy/fedora34_httpd_ip
RUN sed -i 's/Hello World/Built from Dockerfile/' /var/www/cgi-bin/index.cgi && \
sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf && \
chgrp -R 0 /var/www/html && \
mkdir /sashatest && \
chmod g=u -R /var/www/html
EXPOSE 8080
USER root

CMD ["/usr/sbin/httpd","-DFOREGROUND"]
