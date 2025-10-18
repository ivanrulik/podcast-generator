FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git \
 && pip install --no-cache-dir pyyaml \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
