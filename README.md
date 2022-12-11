# base
base image for modified Fedora Silverblue install

[![build-rogblue](https://github.com/rogblue-os/base/actions/workflows/build.yml/badge.svg)](https://github.com/rogblue-os/base/actions/workflows/build.yml)

## How to use

1) Install normal Fedora Silverblue 37
2) Rebase with this command:

   - sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/rogblue-os/base:latest


## What is this
This image is a base image for a modified Fedora Silverblue

- Start with a base Fedora Silverblue 37 image
- Removes Firefox from the base image
- Adds the following packages to the base image:
    - distrobox and gnome-tweaks
- Sets automatic staging of updates for the system
- Sets flatpaks to update twice a day
- Everything else is stock (theme, wallpapers etc)

## Applications
- All applications installed per user instead of system wide, similar to openSUSE MicroOS, they are not on the base image. Thanks for the inspiration Team Green!
- Mozilla Firefox, Mozilla Thunderbird, Extension Manager, Onlyoffice, FontDownloader, Flatseal, and the Celluloid Media Player
- Core GNOME Applications installed from Flathub
    - GNOME Calculator, Calendar, Characters, Connections, Contacts, Evince, Firmware, Logs, Maps, NautilusPreviewer, TextEditor, Weather, baobab, clocks, eog, and font-viewer
    

## Thanks
- [Jorge Castro](https://www.github.com/castrojo) for the inspiration and guidance, these are based mostly to his scripts and groundwork
- The whole Fedora Silverblue / ostree team

