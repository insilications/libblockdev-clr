# latest fedora image for running some of our tests in GH actions

FROM registry.fedoraproject.org/fedora:latest

RUN set -e; \
  dnf install -y ansible python3-pip rpm-build mock csmock git dnf-plugins-core; \
  pip3 install copr-builder; \
  git clone --depth 1 https://github.com/storaged-project/ci.git; \
  git clone --depth 1 https://github.com/storaged-project/udisks.git; \
  git clone --depth 1 https://github.com/storaged-project/blivet.git;

WORKDIR /
