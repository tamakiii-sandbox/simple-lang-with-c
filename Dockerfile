FROM debian:10.5

WORKDIR /work

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      make \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
