# Raspbernetes

### Prerequisites

* Install `flash` from https://github.com/hypriot/flash
* Install `ansible` with `brew install ansible`

### Flash SD cards

Run `flashes.sh` with the image URL and a list of node names:

```
$ ./flashes.sh \
  https://github.com/hypriot/image-builder-rpi/releases/download/v1.1.3/hypriotos-rpi-v1.1.3.img.zip \
  node01 node02 node03 node04 node05
```

HypriotOS default username is `pirate` and its password is `hypriot`.

TODO: Add note about using v1.1.3 instead of the latest version.

### Configure Ansible hosts

TODO: Note about setting up `./hosts` file.

Verify all hosts are up:

```
$ ansible all --inventory-file=./hosts --user=pirate --ask-pass \
  --module-name=ping
```

Re-generate `/etc/machine-id` on all hosts:

```
$ ansible all --inventory-file=./hosts --user=pirate --ask-pass \
  --become \
  --module-name=shell --args="dbus-uuidgen > /etc/machine-id"
```

### Setup cluster

```
$ ansible-playbook --inventory-file=./hosts --ask-pass ./playbooks/setup-cluster.yml
```
