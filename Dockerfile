FROM --platform=linux/amd64 ubuntu:22.04 as builder

RUN apt-get update && \
    apt-get install -y gcc make libc6-dbg

COPY . /repo
WORKDIR /repo

RUN make
RUN make install
