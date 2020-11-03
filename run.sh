#!/bin/bash

# Running Jenkins in docker and exposing it on ports 9000 and 50000
docker run \
	--name jenkins \
	--restart always \
	--hostname jenkins \
	--net olbtrader \
	--ip 172.18.0.100 -d \
	-v /Users/jab/Docker/jenkins/jenkins_home:/var/jenkins_home \
	-v /var/run:/var/run:rw \
	-p 9001:9000\
	-p 50000:50000 \
	-h jenkins \
	local/jenkins:latest \
	--httpPort=9000 \
