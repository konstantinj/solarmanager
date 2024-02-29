FROM httpd:latest

COPY ./custom-httpd.conf /usr/local/apache2/conf/custom-httpd.conf
COPY ./solarmanager-backend.conf /usr/local/apache2/conf/solarmanager-backend.conf
COPY ./solarmanager-frontend.conf /usr/local/apache2/conf/solarmanager-frontend.conf

RUN echo "Include /usr/local/apache2/conf/custom-httpd.conf" >> /usr/local/apache2/conf/httpd.conf

EXPOSE 80 90