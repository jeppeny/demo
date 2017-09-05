#/bin/bash -v

echo Copy domain.crt to this directory
echo Hit enter to continue, Ctrl-C to abort:
read
sudo mkdir -p /etc/docker/certs.d/app-docker136.hex.tno.nl:443
sudo mv domain.crt /etc/docker/certs.d/app-docker136.hex.tno.nl:443
sudo service docker stop
sudo service docker start
echo Hit enter to login to MSG Docker Registry:
read
sudo docker login  app-docker136.hex.tno.nl:443
