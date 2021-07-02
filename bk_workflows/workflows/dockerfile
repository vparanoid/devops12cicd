FROM python:3.7-slim

RUN apt update \
 && apt install -y software-properties-common \
    && apt update \
    && apt install -y python3.7-dev python3-pip build-essential libffi-dev libssl-dev ssh

RUN mkdir -p /usr/local/http-server

RUN useradd runner -d /home/runner -m -s /bin/bash

WORKDIR /usr/local/http-server

ADD ./application.py /usr/local/http-server/application.py

RUN chown -R runner:runner /usr/local/http-server/

USER runner
CMD ["python3", "-u", "/usr/local/http-server/application.py"]

