# Raspbernetes

### Flash SD cards

Ensure `flash` from https://github.com/hypriot/flash is installed.

Run `flashes.sh` with the image URL and a list of node names:

```
$ ./flashes.sh \
  https://github.com/hypriot/image-builder-rpi/releases/download/v1.1.3/hypriotos-rpi-v1.1.3.img.zip \
  node01 node02 node03 node04 node05
```

TODO: Add note about using v1.1.3 instead of the latest version.
