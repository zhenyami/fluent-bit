FROM fedora:latest

RUN dnf upgrade -y \
    && dnf install -y curl git htop procps-ng wget which \
    bison cmake3 flex gcc make openssl openssl-devel \
    autoconf automake libtool g++ pkg-config protobuf-compiler protobuf-devel

# RUN cd build && cmake3 -DFLB_CONFIG_YAML=Off ../ && make -j4
