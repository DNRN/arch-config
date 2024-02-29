# arch-config
My Arch linux config

AUR manager
rua

Desktop
i3wd

bar
i3status-rust

menu
rofi

## Pacman
Package info
```
pacman -Qo <package>
```

Delete package (R) including unused dependencies (n) and package configurations (c)
```
pacman -Rnc <package>
``

## Usefull commands

Clear pacman cache
```
sudo paccache -rk 1
```

Remove all cached versions of uninstalled packages, re-run paccache with u flag
```
sudo paccache -ruk0
```

Remove all uninstalled packages
```
sudo pacman -Sc
```

Invalid or corrupt package (PGP signature)
```
pacman -Syy
pacman -S archlinux-keyring
```

### Local file encryption
Encrypt file with a password, if --output is left out the output file wil become input-file.pgp
```
gpg -c [input-file] --output [filename]
```
Or a secret string
```
echo "secret" | gpg -c --output [filename]
```

Decrypt
```
gpgp -d [filename]
```

## ffmpeg
Convert mov to mp4
```
ffmpeg -i my-video.mov -vcodec h264 -acodec mp2 my-video.mp4
```

