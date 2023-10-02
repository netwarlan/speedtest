## Pull our base image
FROM debian:12-slim

## Image Information
LABEL maintainer="Jeff Nelson <jeff@netwar.org>"
ARG DEBIAN_FRONTEND=noninteractive

## Start building our server
RUN dpkg --add-architecture i386  \
    && apt update \
    && apt install -y \
        curl \
        gnupg \
    && apt clean \
    && rm -rf /var/tmp/* /var/lib/apt/lists/* /tmp/* \

    && curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash \
    && apt install speedtest

ENTRYPOINT ["speedtest", "--accept-license", "--progress=yes"]