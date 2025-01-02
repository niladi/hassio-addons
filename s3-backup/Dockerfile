ARG BUILD_FROM
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

# Copy root filesystem
COPY rootfs /

# Install dependencies
RUN apk add --no-cache \
    coreutils \
    python3 \
    py3-pip \
    groff \
    less \
    jq \
    libffi-dev \
    openssl-dev \
    build-base \
    py3-paho-mqtt && \
    python3 -m venv /opt/venv && \
    . /opt/venv/bin/activate && \
    pip install --no-cache-dir --upgrade pip awscli && \
    deactivate && \
    apk del build-base libffi-dev openssl-dev

# Adjust PATH to include virtual environment
ENV PATH="/opt/venv/bin:$PATH"

