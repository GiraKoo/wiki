#!/bin/bash

web_path=/www/wwwroot/wiki.girakoo

git clean -fxd
git reset HEAD --hard
git pull

mkdocs build
if [ -d ./site ]; then
	#sudo rm ${web_path}/* -rf
	sudo chown www:www ./site -R
	sudo cp ./site/* ${web_path}/ -rf
fi
