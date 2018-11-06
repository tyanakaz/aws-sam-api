FROM alpine

ENV SAM_CLI_VERSION=0.6.1 \
    PYTHONUSERBASE=/usr/local

RUN apk add --no-cache curl python git bash gcc python-dev linux-headers make musl-dev && \
    curl https://bootstrap.pypa.io/get-pip.py | python && \
    pip install --user aws-sam-cli==${SAM_CLI_VERSION} awscli

COPY . /var/opt
WORKDIR /var/opt/app

EXPOSE 3000
