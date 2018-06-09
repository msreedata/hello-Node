FROM centos:centos7

MAINTAINER inSreeMan@gmail.com

# Enable EPEL for Node.js
RUN yum install epel-release -y

# Install Node...
RUN yum install -y npm

# Copy app to /src
COPY . /src

# Install app and dependencies into /src
RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && node ./app.js