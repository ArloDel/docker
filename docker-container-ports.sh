    docker image pull nginx:latest
    docker container create --name nginx --publish 80:80 nginx:latest