xcopy ..\..\filebrowser_frontend\public .\frontend\public /isvy
xcopy ..\..\filebrowser_frontend\src .\frontend\src /isvy
copy ..\..\filebrowser_frontend\assets.go .\frontend\assets.go
copy ..\..\filebrowser_frontend\assets_dev.go .\frontend\assets_dev.go
copy ..\..\filebrowser_frontend\babel.config.js .\frontend\babel.config.js
copy ..\..\filebrowser_frontend\package.json .\frontend\package.json
copy ..\..\filebrowser_frontend\package-lock.json .\frontend\package-lock.json
copy ..\..\filebrowser_frontend\tailwind.config.js .\frontend\tailwind.config.js
copy ..\..\filebrowser_frontend\vue.config.js .\frontend\vue.config.js

docker build . -t qinhy/filebrowser.v2.24.2.custom