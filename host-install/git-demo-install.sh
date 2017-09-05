#/bin/bash -v

echo Hit enter to set git config user:
read
git config --global user.email jeppe.nylokke@ifad.dk
git config --global user.name jeppeny
echo Hit enter to clone git demo repository:
read
git clone https://github.com/jeppeny/demo.git

echo Hit enter to link logos
read
cd /home/ubuntu/demo/exercises/ShipSim-Exercise-1 && ln -s Patrol1.png logo.png 
cd /home/ubuntu/demo/exercises/ShipSim-Exercise-2 && ln -s Patrol2.png logo.png
