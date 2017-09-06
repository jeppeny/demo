#!/bin/bash

# AWS: Should be run on nodes 2-5

if  [ -f docker-consul.conf ]; then
	sudo mkdir -p /etc/systemd/system/docker.service.d
	sudo mv docker-consul.conf /etc/systemd/system/docker.service.d

	sudo systemctl daemon-reload
	sudo systemctl restart docker

	echo Check settings:
	sudo systemctl show --property=ExecStart docker
else
	echo docker-consul.conf not found, exiting...
	exit 1
fi
