FROM ubantu:latest

RUN apt-get update && apt-get install -y \
    pyhton3.10 \
    pyhron3-pip \
    git

RUN pip3 install pyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /enterypoint.sh

ENTRYPOINT [ "/enterypoint.sh" ]