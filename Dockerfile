FROM lambci/lambda:build-nodejs8.10

RUN touch /root/.bashrc

# install yarn
RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo
RUN yum install yarn -y

# install wkhtmltopdf
WORKDIR /tmp
RUN curl -L -O https://downloads.wkhtmltopdf.org/0.12/0.12.5/wkhtmltox-0.12.5-1.centos6.x86_64.rpm
RUN yum --nogpgcheck localinstall wkhtmltox-0.12.5-1.centos6.x86_64.rpm -y

WORKDIR /root
