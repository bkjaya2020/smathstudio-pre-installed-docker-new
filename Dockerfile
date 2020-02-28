FROM ubuntu:18.04
MAINTAINER B.K.Jayasundera

# environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \  
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt -y install xvfb x11vnc xdotool git unzip supervisor net-tools fluxbox gnupg2 \
    && apt -y install xfce4-terminal tzdata  mono-complete unzip vim \
    && dpkg --add-architecture i386 \
    && apt update \
    && apt -y install libgtk2.0-0:i386 \
    && rm -rf /var/lib/apt/lists/*

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
 
WORKDIR /root/
RUN git clone https://github.com/novnc/noVNC.git /root/noVNC \
        && git clone https://github.com/novnc/websockify /root/noVNC/utils/websockify \
        && rm -rf /root/noVNC/.git \
	&& rm -rf /root/noVNC/utils/websockify/.git 

COPY smath.zip /smath.zip
RUN unzip /smath.zip \
    && apt -y purge unzip
COPY bash.bashrc /etc/bash.bashrc
COPY smath.sh /usr/bin/smath.sh
RUN chmod 777 /usr/bin/smath.sh 
EXPOSE 8080
CMD ["/usr/bin/supervisord"]
