FROM ubuntu:18.04

RUN apt update \
  && apt install -y python2.7 libpython2.7 \
  && rm -rf /var/cache/apt

# ./dist dir built on native ubuntu with provided build script
COPY ./dist /workdir/
WORKDIR /workdir

ENV PYTHONPATH=/workdir/lib/python

