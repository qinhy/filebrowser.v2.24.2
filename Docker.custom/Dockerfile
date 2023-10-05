FROM golang:alpine
RUN apk --update add --no-cache npm
RUN apk --update add --no-cache make
RUN apk --update add --no-cache git

workdir /
RUN git clone https://github.com/filebrowser/filebrowser.git

workdir /filebrowser
RUN git checkout v2.24.2
COPY . /filebrowser
RUN cd ./frontend && npx -y tailwindcss -i ./src/css/twmain.css -o ./src/css/twmain.css
RUN export NODE_OPTIONS=--openssl-legacy-provider && make build
# EXPOSE 8080
# ENTRYPOINT [ "/filebrowser/filebrowser", "-a", "0.0.0.0"]
# ENTRYPOINT ["cd","./frontend","&&","npx","tailwindcss","-i","./src/css/twmain.css","-o","./src/css/twmain.css","&&","make","build"]
# ENTRYPOINT ["/bin/sh"]

# docker run -it -v D:/github/qinhy/filebrowser.v2.24.2:/filebrowser --entrypoint=/bin/sh --rm qinhy/filebrowser.v2.24.2
# cd ./frontend && npx -y tailwindcss -i ./src/css/twmain.css -o ./src/css/twmain.css
# cd /filebrowser && make build