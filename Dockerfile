FROM docker.io/achuzhoy/fedora27_httpd_ip
RUN sed -i 's/Hello World/Built from Dockerfile/' /var/www/cgi-bin/index.cgi && \
chgrp -R 0 /var/www/html && \
chmod g=u -R /var/www/html
USER 1001
