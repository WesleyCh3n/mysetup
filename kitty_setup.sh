#!/bin/bash
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

mkdir ~/.local/bin/
ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
#cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications
#sed -i "s/Icon\=kitty/Icon\=\/home\/$USER\/.local\/kitty.app\/share\/icons\/hicolor\/256x256\/apps\/kitty.png/g" ~/.local/share/applications/kitty.desktop

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator ~/.local/bin/kitty 50
sudo update-alternatives --config x-terminal-emulator
cp ./kitty.conf ~/.config/kitty/
