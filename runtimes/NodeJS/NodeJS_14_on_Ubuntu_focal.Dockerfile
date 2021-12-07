# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image with Node.js on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/NodeJS/install_NodeJS_14_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN ls
RUN bash -c '/usr/share/dev-scripts/install_NodeJS_14_on_Ubuntu_focal.sh'
