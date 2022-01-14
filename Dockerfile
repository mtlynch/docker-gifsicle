FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y \
      autoconf \
      build-essential \
      git

RUN git clone https://github.com/kohler/gifsicle.git && \
    cd gifsicle && \
    autoreconf -i && \
    ./configure && \
    make install

ENTRYPOINT ["/usr/local/bin/gifsicle"]
