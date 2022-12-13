FROM quay.io/fedora-ostree-desktops/silverblue:37
#FROM ghcr.io/cgwalters/fedora-silverblue:37
#See https://pagure.io/releng/issue/11047 for final location

COPY etc /etc
COPY rogblue /usr/bin/
RUN rm -f /usr/share/flatpak/fedora-flathub.filter

# fixed rpm-ostree
RUN cd /etc/yum.repos.d/ && wget https://copr.fedorainfracloud.org/coprs/g/CoreOS/continuous/repo/fedora-37/group_CoreOS-continuous-fedora-37.repo

RUN $ rpm-ostree override replace https://download.copr.fedorainfracloud.org/results/@CoreOS/continuous/fedora-37-x86_64/05123243-rpm-ostree/rpm-ostree-{libs-,}2022.16.56.gede3d55e-1.fc37.x86_64.rpm

#RUN rpm-ostree override replace https://download.copr.fedorainfracloud.org/results/@CoreOS/continuous/fedora-37-x86_64/05123243-rpm-ostree/rpm-ostree-{libs-,}2022.16.56.gede3d55e-1.fc37.x86_64.rpm

RUN rpm-ostree override remove firefox firefox-langpacks && \
	rpm-ostree install distrobox gnome-tweaks && \
	sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf && \
	systemctl enable rpm-ostreed-automatic.timer && \
	systemctl enable flatpak-automatic.timer && \
	rpm-ostree cleanup -m  && \
	ostree container commit
