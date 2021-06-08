FROM amazon/aws-sam-cli-build-image-nodejs14.x

RUN touch /root/.bashrc

# install yarn
RUN npm i -g yarn

# install wkhtmltopdf
WORKDIR /tmp
RUN curl -L -O https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.2.1/wkhtmltox-0.12.2.1_linux-centos5-amd64.rpm
RUN yum --nogpgcheck localinstall wkhtmltox-0.12.2.1_linux-centos5-amd64.rpm -y

WORKDIR /root
