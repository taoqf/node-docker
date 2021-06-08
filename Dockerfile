FROM node:12

COPY ./sources.list /etc/apt/sources.list

# COPY ./sources.list /etc/apt/sources.list
RUN apt update         && \
	apt upgrade -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"  && \
	apt install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"     \
	python2                  \
	python3                  \
	curl                  \
	coreutils             \
	util-linux            \
	bsdutils              \
	file                  \
	openssl               \
	libssl-dev            \
	locales               \
	ca-certificates       \
	ssh                   \
	wget                  \
	patch                 \
	sudo                  \
	htop                  \
	dstat                 \
	vim                   \
	tmux                  \
	curl                  \
	git                   \
	zsh                   \
	ksh                   \
	gcc                   \
	g++                   \
	xz-utils              \
	build-essential       \
	bash-completion       && \
	apt-get clean

# Set locale
RUN locale-gen en_US.UTF-8

RUN npm config set registry https://repo.huaweicloud.com/repository/npm/
# nodejs and tools
# RUN npm install -g yarn
