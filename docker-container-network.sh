docker network create --driver bridge mongonetwork
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=password mongo:latest
docker image pull mongo-express:latest
docker container create  --name mongodbexpress --network mongonetwork -p 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://admin:password@mongodb:27017/" mongo-express:latest
docker container start mongodb
docker container start mongodbexpress