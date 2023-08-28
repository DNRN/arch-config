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
Encrypt file with a password
```
gpg -c [input-file] --output [filename]
echo "secret" | gpg -c --output [filename]
```

Decrypt
```
gpgp -d [filename]
```

