FROM aimvector/ebpf-tools:base

#linux-headers-azure for EBPF in the cloud :)
RUN curl -LO http://mirrors.kernel.org/ubuntu/pool/main/l/linux-azure-4.15/linux-headers-4.15.0-1093-azure_4.15.0-1093.103_amd64.deb && \
    curl -LO http://mirrors.kernel.org/ubuntu/pool/main/l/linux-azure-4.15/linux-azure-4.15-headers-4.15.0-1093_4.15.0-1093.103_all.deb && \
    dpkg -i linux-azure-4.15-headers-4.15.0-1093_4.15.0-1093.103_all.deb && \
    dpkg -i linux-headers-4.15.0-1093-azure_4.15.0-1093.103_amd64.deb

ENTRYPOINT [ "/bin/bash"]

#docker build . -f ./azure.4.15.0.1093.dockerfile -t aimvector/ebpf-tools:azure.4.15.0.1093
