#!/bin/bash
docker pull mysql
docker run --name database -e MYSQL_ROOT_PASSWORD=123456 -d mysql
docker build -t nginxapp hostit-html
docker run --link database:database -d --rm -p 8000:80 nginxapp