EMACSURL=""
SHARE="/media/sf_remco"

#Setup the dir and get the source for emacs
mkdir ~/source
cd ~/source
curl -O ${EMACSURL}
tar xf *.tar.xz
rm *.tar.xz
cd emacs-24.5

#Install dependancies
apt-get install libxpm-dev libjpeg-dev libgif-dev libtiff5-dev

#Start building
./confiure
make
make install
cd
### Find a way to fix C-SPC

### Copy emacs config from host
### Assumes shared folder in /home/sf_remco
cp -r ${SHARE}/.emacs* ~/


### Copy SSH keys
cp -r ${SHARE}/.ssh ~/.
