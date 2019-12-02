FROM centos:8

RUN yum update -y
RUN yum install java-1.8.0-openjdk -y

# common unix/linux utils
RUN yum install wget zip unzip -y

# Terraform
RUN wget https://releases.hashicorp.com/terraform/0.12.17/terraform_0.12.17_linux_amd64.zip
RUN unzip terraform_0.12.17_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN rm -f terraform_0.12.17_linux_amd64.zip

# Packer
RUN wget https://releases.hashicorp.com/packer/1.4.5/packer_1.4.5_linux_amd64.zip
RUN unzip packer_1.4.5_linux_amd64.zip
RUN mv packer /usr/local/bin/
RUN rm -f packer_1.4.5_linux_amd64.zip

RUN wget https://www-eu.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip
RUN unzip apache-maven-3.6.3-bin.zip


CMD tail -f /dev/null
