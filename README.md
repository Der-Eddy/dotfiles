# Eddy's dotfiles

I'm using Arch Linux with KDE Plasma 5. You can find example screenshots of my system at [/r/unixporn](https://www.reddit.com/r/unixporn/comments/a8r98x/kde_my_first_try/).

Currently available configs:

## Zsh

See `.zshrc`

Color of the prompt will change depending if you are using it locally, via SSH or as root:

![](https://i.imgur.com/Oaw7KBL.png)

![](https://i.imgur.com/7oVpFKJ.png)

![](https://i.imgur.com/Bscx0TJ.png)

Additionally [zsh-autosuggestions](https://www.archlinux.org/packages/community/any/zsh-autosuggestions/) is used

## Conky

See `.conkyrc`

![](https://i.imgur.com/R4wR65P.png)

To enable blur on KDE Plasma, give the conky window blur settings:

    xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id `xdotool search --class conky`

## htop

See `.config/htop/`

![](https://i.imgur.com/xW16OUG.png)

## Neofetch

See `.config/neofetch/`

## Nano

See `.nanorc`

## /Scripts

While technically not dotfiles, some small scripts can be found here

## /etc

While technically not dotfiles, I put some config files from /etc into the `etc` folder
