FROM archlinux

RUN yes | pacman -Syyu
RUN yes | pacman -S nodejs npm ripgrep lazygit git sudo python python-pip bash neovim gcc make cmake
RUN useradd dev --create-home --shell /bin/bash
USER dev
WORKDIR /home/dev/.config/nvim
COPY . .
WORKDIR /home/dev
CMD ["bash"]

