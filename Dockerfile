FROM mikesir87/aws-cli

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk add --no-cache --update zsh openssh rsync tmux git ansible neovim httpie
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

ADD ./config/.tmux.conf /root/.tmux.conf
ADD ./config/.zshrc /root/.zshrc
ENV SHELL=/bin/zsh
ENV LC_ALL=en_US.UTF-8

ENTRYPOINT ["zsh"]
