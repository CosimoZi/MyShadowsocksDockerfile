FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y python-pip libsodium18 git
RUN pip install git+https://github.com/shadowsocks/shadowsocks.git@master

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/ssserver"]
