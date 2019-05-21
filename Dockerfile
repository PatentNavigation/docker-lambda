FROM lambci/lambda:build-nodejs10.x

RUN touch /root/.bashrc

# install yarn
RUN npm i -g yarn

# link libcurl so we can install nodegit
RUN ln -s /usr/lib64/libcurl.so.4 /usr/lib64/libcurl-gnutls.so.4

# install wkhtmltopdf
WORKDIR /tmp
RUN curl -L -O https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.2.1/wkhtmltox-0.12.2.1_linux-centos5-amd64.rpm
RUN yum --nogpgcheck localinstall wkhtmltox-0.12.2.1_linux-centos5-amd64.rpm -y

WORKDIR /root
