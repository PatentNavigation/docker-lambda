FROM public.ecr.aws/sam/build-nodejs18.x:1.69.0-20230112020742
RUN touch /root/.bashrc

# install yarn
RUN npm i -g yarn

# install wkhtmltopdf so we can run `cyclopia` tests on circle
WORKDIR /tmp
RUN curl -L -O https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox-0.12.6-1.amazonlinux2.x86_64.rpm
RUN yum --nogpgcheck localinstall wkhtmltox-0.12.6-1.amazonlinux2.x86_64.rpm -y

WORKDIR /root
