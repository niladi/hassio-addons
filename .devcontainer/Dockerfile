FROM ghcr.io/home-assistant/devcontainer:addons
ARG USERNAME=vscode

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl ca-certificates && \
    su ${USERNAME} -c "curl  -H 'Pragma: no-cache' https://raw.githubusercontent.com/niladi/zsh-install/master/install-zsh.sh | bash -s -- --vscode --skip-vim" && \
    mkdir -p /workspace && \
    chown -R vscode /workspace && \
    rm -rf /var/lib/apt/lists/*

USER ${USERNAME}
