FROM gliderlabs/alpine

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk-install bash openssh tmux git ansible vim

CMD /usr/bin/tmux new -s master
