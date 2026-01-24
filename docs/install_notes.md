# Downstairs PC - Install Notes

## High level overview - bootstrap phase 
1. Install the base operating system using arch install (can we possibly script this step?)
	1.1 Enable multilib repo
	1.2 Enable pipewire and bluetooth
2. Install required utilities 
	2.1 sudo pacman -S linux-headers base-devel
	2.2 sudo pacman -S nvidia-open-dkms nvidia-utils lib32-nvidia-utils
	2.3 sudo pacman -S xorg xorg-xinit
	2.4 sudo pacman -S git nano pavocontrol stow openssh
3. Clone DWM repo (https://git.suckless.org/dwm - todo: build my own repo to manage source code modifications in the future)
	3.1 CD into dwm
	3.2 sudo make clean install
4. Clone ST repo (https://git.suckless.org/git - todo: see above)
	4.1 CD into st
	4.2 sudo make clean install
5. Clone dmenu repo (https://git.suckless.org/dmenu - todo: see dwm)
	5.1 CD into ~/projects/suckless/dmneu
	5.2 sudo make clean install
6. Install SDDM and enable
	6.1 sudo pacman -S sddm
	6.2 sudo systemctl enable sddm
	6.3 cp ~/bootstrap/dwm.desktop /usr/share/xsessions/dwm.desktop
7. Install software packages from repos
	7.1 sudo pacman -S firefox
8. Install AUR packages
	8.1 Install yay
		8.1.1 git clone https://aur.archlinux.org/yay.git ~/projects/yay
		8.1.2 cd ~/projects/yay
		8.1.3 makepkg -si
	8.2 yay -sy zoom iriunwebcam-bin

Base Packages:
1. amd-ucode
2. base
3. bluez
4. bluez-utils
5. btrfs-progs
6. cups 
7. cups-pk-helper
8. efibootmgr
9. gst-plugin-pipewire
10. libpulse
11. linux
12. linux-firmware
13. pipewire
14. pipewire-alsa
15. pipewire-pulse
16. pipewire-jack
17. sudo
18. system-config-printer
19. usbmuxd
20. v4l2loopback-dkms
21. wireplumber
22. xf86-video-vesa
23. xorg
24. xorg-xinit
25. zram-generator
