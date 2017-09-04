#/bin/bash -v

sudo apt-get update
sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
pause
sudo docker run hello-world
echo Copy domain.crt to this directory
pause
sudo mkdir -p /etc/docker/certs.d/app-docker136.hex.tno.nl:443
sudo mv domain.crt /etc/docker/certs.d/app-docker136.hex.tno.nl:443
sudo service docker stop
sudo service docker start
pause
sudo docker login  app-docker136.hex.tno.nl:443
pause
git config --global user.email jeppe.nylokke@ifad.dk
git config --global user.name jeppeny
pause
git clone https://github.com/jeppeny/demo.git
pause
sudo curl -L  https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod a+x /usr/local/bin/docker-compose

pause
sudo curl -L git.io/weave -o /usr/local/bin/weave
sudo chmod a+x /usr/local/bin/weave

weave launch
eval $(weave env)
pause
sudo curl -L git.io/scope -o /usr/local/bin/scope
sudo chmod a+x /usr/local/bin/scope
scope launch
pause
cd demo/exercises/ShipSim-Exercise-1 && ln -s Patrol1.png logo.png && cd ../cd ShipSim-Exercise-2 && ln -s Patrol2.png logo.png
