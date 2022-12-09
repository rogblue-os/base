FROM quay.io/fedora-ostree-desktops/silverblue:37
#FROM ghcr.io/cgwalters/fedora-silverblue:37
# See https://pagure.io/releng/issue/11047 for final location

COPY etc /etc

COPY rogblue-firstboot /usr/bin

RUN rpm-ostree override remove firefox firefox-langpacks && \
	cd /etc/yum.repos.d/ && curl -LO https://copr.fedorainfracloud.org/coprs/lukenukem/asus-linux/repo/fedora-37/lukenukem-asus-linux-fedora-37.repo && \
	rpm-ostree install distrobox gnome-tweaks neofetch asusctl supergfxctl asusctl-rog-gui && \
	sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf && \
	systemctl enable rpm-ostreed-automatic.timer && \
	systemctl enable flatpak-automatic.timer && \
	systemctl enable supergfxd && rpm-ostree cleanup -m  && \
	ostree container commit
