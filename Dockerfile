FROM gliderlabs/alpine

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk-install bash openssh openssh-client ssh-keysign rsync tmux git ansible vim

CMD /usr/bin/tmux new -s master
