FROM lambci/lambda:build-nodejs8.10

RUN touch /root/.bashrc

# install yarn
RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo
RUN yum install yarn -y

# install wkhtmltopdf
WORKDIR /tmp
RUN curl -L -O https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
RUN tar -xvf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
WORKDIR /tmp/wkhtmltox/bin/
RUN mv *  /usr/local/bin/

WORKDIR /root
