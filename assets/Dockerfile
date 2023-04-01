ARG DALAI_VERSION

FROM python:3.10-slim-buster

ARG DALAI_VERSION

WORKDIR /root/dalai

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        curl \
        g++ \
        git \
        make \
        python3-venv \
        software-properties-common && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get update && \
    apt-get install -y nodejs && \
    npm install dalai@${DALAI_VERSION} && \
    npx dalai alpaca setup

EXPOSE 3000

VOLUME /data

CMD [ "npx", "dalai", "serve" ]

