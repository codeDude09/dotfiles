FROM archlinux

RUN echo yes | pacman -Syu
RUN echo yes | pacman -S git sudo 
RUN echo -e '\n' | pacman -S base-devel nodejs npm python
RUN useradd -m build
RUN echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN echo "root ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER build
WORKDIR /home/build
RUN git clone https://aur.archlinux.org/neovim-nightly-git.git
RUN cd neovim-nightly-git && makepkg --noconfirm -rsi --install 
RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
RUN cd
RUN git clone https://aur.archlinux.org/nvm.git
RUN cd nvm && makepkg --noconfirm -rsi --install 
RUN cd
COPY . /home/build/dotfiles
