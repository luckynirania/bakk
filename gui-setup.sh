sudo sh -c 'cat /etc/apt/sources.list | sed "s/\/arch/\/in.arch/g" > temp.list'
sudo sh -c 'cat temp.list > /etc/apt/sources.list'
sudo rm temp.list 

sudo apt update && sudo apt upgrade -y
sudo apt install nemo lxappearance neofetch meson ninja-build gnome-tweaks fonts-jetbrains-mono -y

# vimix theme
git clone https://github.com/vinceliuice/vimix-gtk-themes.git
cd vimix-gtk-themes && ./install.sh && cd ..
rm -rf vimix-gtk-themes

# paper icon theme
git clone https://github.com/snwh/paper-icon-theme.git
cd paper-icon-theme 
meson "build" --prefix=/usr && sudo ninja -C "build" install
cd ..
rm -rf paper-icon-theme



