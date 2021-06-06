FROM aimvector/ebpf-tools:base

RUN apt-get update && apt-get install -y libssl1.0.0
#linux-headers-azure for EBPF in the cloud :)
RUN curl -LO http://security.ubuntu.com/ubuntu/pool/main/l/linux-azure/linux-headers-4.15.0-1063-azure_4.15.0-1063.68_amd64.deb && \
    curl -LO http://security.ubuntu.com/ubuntu/pool/main/l/linux-azure/linux-azure-headers-4.15.0-1063_4.15.0-1063.68_all.deb && \
    dpkg -i linux-azure-headers-4.15.0-1063_4.15.0-1063.68_all.deb && \
    dpkg -i linux-headers-4.15.0-1063-azure_4.15.0-1063.68_amd64.deb

ENTRYPOINT [ "/bin/bash"]

#docker build . -f ./azure.4.15.0.1063.dockerfile -t aimvector/ebpf-tools:azure.4.15.0.1063
