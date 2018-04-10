# install pip
sudo apt-get install python-pip

#remove any old versions of docker
sudo apt-get remove docker docker-engine docker.io

#update
sudo apt-get update

# install prereqs
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# add dockers PGP key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# verify the key was installed
# sudo apt-key fingerprint 0EBFCD88

# add the stable repo
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# udpate
sudo apt-get update

#install update
sudo apt-get install docker-ce

# add a group called docker
sudo groupadd docker

# add the current user to the docker group
sudo usermod -aG docker $USER

# need to logout in order to take effect
echo "Please logout/login in order for updates to apply.s"
# check for docker running