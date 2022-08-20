FROM julia:1.8

RUN apt update && apt-get install -y vim curl wget git tmux \
  iputils-ping exuberant-ctags locales sudo
COPY locale.gen /etc/locale.gen
RUN locale-gen

RUN adduser siuyin --disabled-password
COPY .vimrc /home/siuyin/.vimrc
RUN echo 'siuyin ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN chown siuyin:siuyin /home/siuyin/.vimrc
RUN echo 'PATH="/usr/local/julia/bin:$PATH"' >> /home/siuyin/.profile
RUN echo 'export LC_ALL=en_SG.UTF-8' >> /home/siuyin/.bashrc
USER siuyin
WORKDIR /home/siuyin

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
