# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for Node.js development in VS Code on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY languages/NodeJS/install_NodeJS_16_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_NodeJS_16_on_Ubuntu_focal.sh'

COPY IDEs/VSCode/start_VSCode_with_repo.sh /usr/share/dev-scripts/

COPY IDEs/VSCode/configure_VSCode_to_autostart.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/configure_VSCode_to_autostart.sh'
