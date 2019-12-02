FROM centos:8

RUN yum update -y
RUN yum install java-1.8.0-openjdk -y

# common unix/linux utils
RUN yum install wget zip unzip -y

CMD tail -f /dev/null
