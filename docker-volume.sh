docker volume ls
docker volume create mongo-volume
docker volume rm mongo-volume
docker container create --name mongovolume --mount "type=volume,source=mongo-volume,target=/data/db"--publish 27019:27017 --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=admin mongo:latest
docker container start mongovolume