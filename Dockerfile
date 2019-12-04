FROM centos:8

RUN yum update -y
RUN yum install java-1.8.0-openjdk-devel -y

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

# maven
RUN wget https://www-eu.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip
RUN unzip apache-maven-3.6.3-bin.zip
RUN mv apache-maven-3.6.3 maven && \
    mv maven /opt/maven
RUN rm apache-maven-3.6.3-bin.zip
ENV JAVA_HOME=/usr/lib/jvm/jre-openjdk
ENV PATH=$PATH:/opt/maven/bin/

# Gradle
RUN wget https://services.gradle.org/distributions/gradle-5.0-bin.zip -P /opt/
WORKDIR /opt/
RUN unzip gradle-5.0-bin.zip
RUN rm -f gradle-5.0-bin.zip
RUN mv gradle-5.0 gradle
ENV PATH=$PATH:/opt/gradle/bin/

# Git
RUN yum install git -y


# NodeJS runtime
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash - && \
    yum install -y nodejs && \
    adduser -mr nodejs && \
    rm -rvf /var/lib/rpm /var/cache/*

CMD tail -f /dev/null
