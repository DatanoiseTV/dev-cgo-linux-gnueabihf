FROM golang:1.15.2

RUN dpkg --add-architecture armhf
RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc-arm-linux-gnueabihf \
		libc6-dev-armhf-cross \
    		crossbuild-essential-armhf \
		libasound2-dev:armhf \
		portaudio19-dev:armhf \
		libportmidi-dev:armhf \
	&& rm -rf /var/lib/apt/lists/*
