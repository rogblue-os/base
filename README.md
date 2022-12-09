# base
base image for modified Fedora Silverblue install for ROG laptops

## How to use

1) Install normal Fedora Silverblue 37
2) Rebase with this command:

   - sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/rogblue-os/base:latest


## What is this
This image is a base image for a modified Fedora Silverblue, mostly for use with ASUS ROG laptops. Image includes the basic tools from the Asus-linux project (www.asus-linux.org).

- Start with a base Fedora Silverblue 37 image
- Removes Firefox from the base image
- Adds the following packages to the base image:
    - distrobox and gnome-tweaks
- Sets automatic staging of updates for the system
- Sets flatpaks to update twice a day
- asusctl, supergfxclt and rog-control-center (asusctl-rog-gui) included
- Everything else (desktop, artwork, etc) remains stock so you can use this as a good starting image

## Applications
- All applications installed per user instead of system wide, similar to openSUSE MicroOS, they are not on the base image. Thanks for the inspiration Team Green!
- Mozilla Firefox, Mozilla Thunderbird, Extension Manager, Onlyoffice, FontDownloader, Flatseal, and the Celluloid Media Player
- Core GNOME Applications installed from Flathub
    - GNOME Calculator, Calendar, Characters, Connections, Contacts, Evince, Firmware, Logs, Maps, NautilusPreviewer, TextEditor, Weather, baobab, clocks, eog, and font-viewer
    
## Thanks
- Jorge Castro for the inspiration and guidance, these are based mostly to his scripts and groundwork
- The whole Silverblue / ostree team

