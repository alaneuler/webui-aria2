ARG IMAGE=debian:10
ARG USER=alaneuler

FROM $IMAGE
ARG USER

RUN apt update && apt install -y aria2 nginx sudo
COPY aria2.conf nginx.conf /etc/
COPY start.sh /usr/bin/
COPY docs/* /opt/webui/
RUN chmod a+x /usr/bin/start.sh

RUN useradd -m -s /bin/bash $USER
RUN mkdir -p /opt/ && chown -R $USER:$USER /opt/

EXPOSE 80
CMD [ "start.sh" ]
