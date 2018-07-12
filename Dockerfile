FROM lambci/lambda:build-nodejs8.10

RUN touch /root/.bashrc

# install yarn
RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo
RUN yum install yarn -y

# install wkhtmltopdf
WORKDIR /tmp
RUN curl -L -O https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.2.1/wkhtmltox-0.12.2.1_linux-centos6-amd64.rpm
RUN yum --nogpgcheck localinstall wkhtmltox-0.12.2.1_linux-centos6-amd64.rpm -y

WORKDIR /root
