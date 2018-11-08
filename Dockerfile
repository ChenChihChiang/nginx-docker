FROM centos:7
MAINTAINER John Chen <john.chen@grindr.com>
LABEL Description="This image is used to nginx"
RUN yum -y install epel-release
RUN yum -y install nginx
COPY ./hello.html /usr/share/nginx/html/
WORKDIR /app
ENTRYPOINT ["/bin/sh", "-c", "nginx -g daemon off"]
#CMD ["1000000"]
