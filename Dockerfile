FROM ubuntu:16.04

RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C692420F

RUN echo "deb http://ppa.launchpad.net/twemproxy/stable/ubuntu xenial main" > /etc/apt/sources.list.d/twemproxy.list

RUN apt-get update -q \
	&& apt-get install -y twemproxy \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 22222

ENTRYPOINT ["/usr/sbin/nutcracker"]
