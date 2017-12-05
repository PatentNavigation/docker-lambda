FROM lambci/lambda:build-nodejs6.10

RUN useradd -ms /bin/bash circleci
USER circleci
WORKDIR /home/circleci

RUN curl -o- -L https://yarnpkg.com/install.sh | bash
