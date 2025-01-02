ARG BUILD_FROM
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

COPY rootfs /

RUN apk add --no-cache \
    python3 \
    py3-pip \
    groff \
    less \
    jq \
    libffi-dev \
    openssl-dev \
    build-base \
    py3-paho-mqtt && \
    python3 -m ensurepip --upgrade && \
    pip3 install --no-cache-dir --upgrade pip && \
    pip3 install --no-cache-dir awscli && \
    apk del build-base libffi-dev openssl-dev

