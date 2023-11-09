#FROM docker.io/cyplo/fedora27_base
FROM quay.io/achuzhoy/fedora34_httpd_ip
RUN sed -i 's/Hello World/Built from Dockerfile/' /var/www/cgi-bin/index.cgi && \
chgrp -R 0 /var/www/html && \
mkdir /sashatest && \
chmod g=u -R /var/www/html
EXPOSE 8080
USER 1001

CMD ["/usr/sbin/httpd","-DFOREGROUND"]
