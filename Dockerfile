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
	
RUN wget -O /usr/local/bin/mc https://dl.min.io/client/mc/release/linux-amd64/mc && chmod +x /usr/local/bin/mc
