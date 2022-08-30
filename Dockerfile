FROM public.ecr.aws/sam/build-nodejs16.x:1.55.0-20220818005337
RUN touch /root/.bashrc

# install yarn
RUN npm i -g yarn

# install wkhtmltopdf
# WORKDIR /tmp
# RUN curl -L -O https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.2.1/wkhtmltox-0.12.2.1_linux-centos5-amd64.rpm
# RUN yum --nogpgcheck localinstall wkhtmltox-0.12.2.1_linux-centos5-amd64.rpm -y

WORKDIR /root
