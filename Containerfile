ARG FEDORA_VERSION=44
FROM quay.io/fedora/fedora-bootc:${FEDORA_VERSION}

RUN dnf5 -y install @workstation-product-environment && dnf5 clean all

RUN systemctl enable gdm.service NetworkManager.service && systemctl set-default graphical.target

RUN bootc container lint
