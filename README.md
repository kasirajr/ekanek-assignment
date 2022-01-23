# README

This README would normally document whatever steps are necessary to get the
application up and running.

# Prerequisite and installation
install rvm - https://rvm.io/rvm/install
rvm user gemsets
rvm install 2.7.4

sudo apt-get install libmysqlclient-dev
instal mysql - https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-18-04
configure username/password in config/database.yml

rails db:create
rails db:migrate

install nvm - https://github.com/nvm-sh/nvm
nvm install 14.18.1
sudo apt install npm
npm install --global yarn
rails assets:precompile


# For showing preview images
install imagemagick
install ffmpeg
install muPDF

# start the server
rails s

visit localhost:3000

# Note

I haven't enabled or configured email services.
All uploaded files will be stored in the local file system only.
