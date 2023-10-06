FROM alpine
COPY . /
RUN chmod +x ./filebrowser
workdir /home
EXPOSE 8080
ENTRYPOINT [ "/filebrowser", "-a", "0.0.0.0"]
# docker run -it -v D:\github\qinhy\softLicense\quickaichat:/home -p 8080:8080 --rm qinhy/filebrowser.v2.24.2.runtime