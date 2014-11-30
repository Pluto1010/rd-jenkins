FROM          jenkins:weekly
MAINTAINER    Dennis Schulz <dennis@port42.org>

# USER root

# Ignore APT warnings about not having a TTY
# ENV DEBIAN_FRONTEND noninteractive

# RUN apt-get update -y
# RUN apt-get install -y apt-transport-https

# RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
# RUN sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
# RUN apt-get update -y
# RUN apt-get install -y lxc-docker-1.3.2

# Clean up APT and temporary files when done
# RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# RUN gpasswd -a jenkins docker

VOLUME [ "/var/run/docker.sock", "/usr/bin/docker" ]

USER jenkins
