FROM achuzhoy/fedora27_httpd_ip
RUN sed -i 's/Hello World/Built from Dockerfile/' /var/www/cgi-bin/index.cgi
