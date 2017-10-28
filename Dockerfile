FROM alpine

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk add --no-cache zsh aws-cli-zsh-completion openssh openssh-client ssh-keysign rsync tmux git ansible neovim httpie

CMD /usr/bin/tmux new -s master
