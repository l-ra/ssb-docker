FROM ubuntu:18.04
RUN apt update \
    && apt -y install nodejs npm gettext-base \
    && npm install -g ssb-server \
    && adduser --system ssb \
    && mkdir /home/ssb/.ssb \
    && chown ssb:nogroup /home/ssb/.ssb
COPY config.initial start.sh /
ENV SSB_PUB_HOSTNAME=localhost \
    SSB_PUB_PORT=8008
WORKDIR /home/ssb
USER ssb
CMD  ["/start.sh"]
VOLUME /home/ssb/.ssb
EXPOSE 8008

