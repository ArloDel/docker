docker volume create mongorestore

docker container run --rm --name ubunturestore --mount "type=bind,source=D:\COURSE\docker\backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"


docker container create --name mongorestore --mount "type=volume,source=mongorestore,target=/data/db" --publish 27020:27017 --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=admin mongo:latest
