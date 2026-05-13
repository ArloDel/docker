docker container stop mongovolume
mkdir backup

docker container create --name nginxbackup --mount "type=bind,source=D:\COURSE\docker\backup,destination=/backup" --mount "type=volume,source=mongo-volume,destination=/data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

tar cvf /backup/backup.tar.gz /data

docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume

docker container stop mongovolume

docker container run --rm --name ubuntubackup --mount "type=bind,source=D:\COURSE\docker\backup,destination=/backup" --mount "type=volume,source=mongo-volume,destination=/data" ubuntu:latest tar cvf /backup/backup1.tar.gz /data