FROM public.ecr.aws/lambda/nodejs:18
RUN touch /root/.bashrc

# Override the ENTRYPOINT set by the AWS Lambda base image, which are
# set up to run a Lambda handler function, but we need it for more
# general purposes
ENTRYPOINT []

# install yarn
RUN npm i -g yarn

# circleci needs gzip to support workflow workspaces
RUN yum install -y gzip

# we need tar & zip/unzip to run sls deploy
RUN yum install -y tar
RUN yum install -y zip
RUN yum install -y unzip

# install wkhtmltopdf so we can run `cyclopia` tests on circle
WORKDIR /tmp
RUN curl -L -O https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox-0.12.6-1.amazonlinux2.x86_64.rpm
RUN yum --nogpgcheck localinstall wkhtmltox-0.12.6-1.amazonlinux2.x86_64.rpm -y

WORKDIR /root
