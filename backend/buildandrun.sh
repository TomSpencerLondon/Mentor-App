#! /bin/sh
mvn package
docker image build -t backend:0.0.1 .
docker stop backend
docker container rm backend
docker container run -p 127.0.0.1:8080:8080/tcp --detach --name backend backend:0.0.1
