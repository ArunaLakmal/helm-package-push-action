FROM registry.access.redhat.com/ubi7/ubi-init

RUN curl -O https://get.helm.sh/helm-v3.9.2-linux-amd64.tar.gz && \
    tar -zxvf helm-v3.9.2-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/ && \
    rm -rf linux-amd64

RUN curl -LO https://github.com/mikefarah/yq/releases/download/v4.26.1/yq_linux_amd64 && \
    mv yq_linux_amd64 /usr/local/bin/yq && \
    chmod +x /usr/local/bin/yq

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]