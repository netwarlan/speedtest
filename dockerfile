## Pull our base image
FROM debian:11

## Image Information
LABEL maintainer="Jeff Nelson <jeff@netwar.org>"
ARG DEBIAN_FRONTEND=noninteractive

## Start building our server
RUN dpkg --add-architecture i386 
RUN apt-get update \
    && apt-get install -y \
        curl \
        gnupg \
    && apt-get clean \
    && rm -rf /var/tmp/* /var/lib/apt/lists/* /tmp/* \

    && curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash \
    && apt-get install speedtest

ENTRYPOINT ["speedtest", "--accept-license", "--progress=yes"]