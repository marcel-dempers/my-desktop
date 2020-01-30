FROM aimvector/ebpf-tools:base

#linux-headers-azure for EBPF in the cloud :)

RUN curl -LO http://security.ubuntu.com/ubuntu/pool/main/l/linux-azure/linux-azure-headers-4.15.0-1061_4.15.0-1061.66_all.deb && \
    curl -LO http://archive.ubuntu.com/ubuntu/pool/main/l/linux-azure/linux-headers-4.15.0-1061-azure_4.15.0-1061.66_amd64.deb && \
    dpkg -i linux-azure-headers-4.15.0-1061_4.15.0-1061.66_all.deb && \
    dpkg -i linux-headers-4.15.0-1061-azure_4.15.0-1061.66_amd64.deb

ENTRYPOINT [ "/bin/bash"]

#docker build . -f ./azure.4.15.0.1061.dockerfile -t aimvector/ebpf-tools:azure.4.15.0.1061
