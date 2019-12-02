FROM centos:8
RUN yum update -y
CMD tail -f /dev/null
