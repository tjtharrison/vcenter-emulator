FROM golang:latest

ENV GOPATH=/app/

## Install vcsim
RUN mkdir /app && \
    cd /app && \
    go get -u github.com/vmware/govmomi/vcsim

## Install govc
RUN cd /tmp/ && \
    wget https://github.com/vmware/govmomi/releases/download/v0.20.0/govc_linux_amd64.gz && \
    gunzip govc_linux_amd64.gz && \
    mv govc_linux_amd64 govc && \
    chmod +x govc && \
    mv govc /usr/local/bin/.

WORKDIR /app