FROM alpine
COPY . /
RUN chmod +x ./filebrowser.alpine
EXPOSE 8080
ENTRYPOINT [ "/filebrowser.alpine", "-a", "0.0.0.0"]