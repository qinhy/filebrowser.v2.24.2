FROM golang:alpine
RUN apk --update add --no-cache npm
RUN apk --update add --no-cache make
RUN apk --update add --no-cache git
RUN apk --update add --no-cache bash

workdir /
RUN git clone https://github.com/filebrowser/filebrowser.git

workdir /filebrowser
RUN git checkout v2.24.2
RUN export NODE_OPTIONS=--openssl-legacy-provider && make build

# docker run -it -v D:/github/qinhy/filebrowser.v2.24.2:/home/filebrowser --entrypoint=/bin/sh --rm qinhy/filebrowser.v2.24.2
# cd /filebrowser/frontend && npx -y tailwindcss -i ./src/css/twmain.css -o ./src/css/twmain.css
# cd /filebrowser && make build