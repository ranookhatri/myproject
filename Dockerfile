FROM centos:latest
MAINTAINER ranu1khatri@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/spicyo.zip /var/www/html
WORKDIR /var/www/html
RUN unzip spicyo.zip
RUN cp -rvf spicyo/* .
RUN rm -rf spicyo spicyo.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
