docker container stop mongovolume
mkdir backup

docker container create --name nginxbackup --mount "type=bind,source=D:\COURSE\docker\backup,destination=/backup" --mount "type=volume,source=mongo-volume,destination=/data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash