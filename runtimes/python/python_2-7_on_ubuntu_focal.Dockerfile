# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image with Python on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

# Python 2.7 comes pre-installed on Ubuntu 20.04 (Focal Fossa).
COPY runtimes/python/install_python_2-7_on_ubuntu_focal.sh .
RUN bash -c './install_python_2-7_on_ubuntu_focal.sh'
