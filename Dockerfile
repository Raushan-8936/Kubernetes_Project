FROM centos.latest
LABEL maintainer="Your Name <tmraushan2020@gmail.com>"
RUN yum install -y httpd \
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN cp -rvf photogenic.zip
RUN rm -rf photogenic photogenic.zip
CMD [ "/usr/sbin/httpd" "-D", "FOREGROUND" ]
EXPOSE 80 22
