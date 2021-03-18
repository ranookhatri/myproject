FROM centos:latest
MAINTAINER ranu1khatri@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/mountain.zip
WORKDIR /var/www/html
RUN unzip mountain.zip
RUN cp -rvf mountain/* .
RUN rm -rf mountain mountain.zip
CMD ["/user/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
