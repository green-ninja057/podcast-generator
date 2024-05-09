FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y git python3-yaml && \
    apt-get install -y git python3-pip && \
    apt-get clean
    git
  
RUN pip3 install PyYAML 

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
