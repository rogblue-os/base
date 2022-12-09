# base
base image for modified Fedora Silverblue install for ROG laptops

## How to use

1) Install normal Fedora Silverblue 37
2) Rebase with this command:

```sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/inffy/rogblue-image:latest```


## What is this
This image is a base image for a modified Fedora Silverblue, mostly for use with ASUS ROG laptops. Image includes the basic tools from the Asus-linux project (www.asus-linux.org).

Image has these modifications planned:

- Remove fedora flatpak repo and flatpacks

- Enable full access to Flathub repositories

- All included flatpaks are replaced to the corresponding apps from Flathub

- Includes asusctl, supergfxctl and asusctl-rog-gui tools to manage your Asus ROG laptops

- Includes custom asus-linux kernel with needed patches for current-gen ROG laptops (NOT IMPLEMENTED YET)
    
