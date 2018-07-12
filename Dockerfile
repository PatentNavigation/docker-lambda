FROM lambci/lambda:build-nodejs8.10

RUN touch /root/.bashrc

# install yarn
RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo
RUN yum install yarn -y

WORKDIR /root
