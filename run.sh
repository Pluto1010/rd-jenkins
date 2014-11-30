#!/bin/bash
docker run --name rd-jenkins -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):$(which docker) $1 rd-jenkins-image $2