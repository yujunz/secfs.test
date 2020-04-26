FROM ubuntu

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -yq update && \
    apt-get -yq install git gcc g++ make libacl1-dev && \
    apt-get -yq clean

WORKDIR /app
COPY . .
RUN make
