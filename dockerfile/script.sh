# FROM instruction is used to specify the base image for the Docker image being built.
docker build -t arlodel/from from
docker image ls


# RUN instruction is used to execute commands in the Docker image during the build process.
docker build -t arlodel/run run
docker image ls
docker build -t arlodel/run run --progress=plain --no-cache


# CMD instruction is used to specify the default command to run when a container is started from the image.
docker build -t arlodel/command command
docker image inspect arlodel/command
docker container create --name command arlodel/command
docker container start command
docker container logs command

# LABEL instruction is used to add metadata to the Docker image in the form of key-value pairs.
docker build -t arlodel/label label
docker image inspect arlodel/label
 
# ADD instruction is used to copy files and directories from the host machine to the Docker image during the build process.
docker build -t arlodel/add add
docker container create --name add arlodel/add
docker container start add
docker container logs add

# COPY instruction is used to copy files and directories from the host machine to the Docker image during the build process, similar to ADD but without the additional features.
docker build -t arlodel/copy copy
docker container create --name copy arlodel/copy
docker container start copy
docker container logs copy


# .gitignore is used to specify files and directories that should be ignored by Git when committing changes to a repository. .dockerignore is used to specify files and directories that should be ignored by Docker when building an image.
docker build -t arlodel/dockerignore .dockerignore
docker container create --name dockerignore arlodel/dockerignore
docker container start dockerignore
docker container logs dockerignore


# EXPOSE instruction is used to specify the network ports that a container listens on at runtime.
docker build -t arlodel/expose expose
docker image inspect arlodel/expose
docker container create --name expose -p 8080:8080 arlodel/expose
docker container start expose
curl http://localhost:8080


# ENV instruction is used to set environment variables in the Docker image that can be accessed by the application running inside the container.
docker build -t arlodel/env env
docker image inspect arlodel/env
docker container create --name env --env APP_PORT=9090 -p 8080:8080 arlodel/env
docker container start env
docker container logs env
curl http://localhost:9090

# VOLUME instruction is used to create a mount point in the Docker image that can be used to persist data or share data between the host machine and the container.
docker build -t arlodel/volume volume
docker image inspect arlodel/volume
docker container create --name volume --env APP_PORT=8080 -p 8080:8080 arlodel/volume
docker container start volume
docker container logs volume
docker container inspect volume
# 31a0b6b3cd01f8e37693031c9e45d6d57b2e975ddc5decacb975ba28d4263875
docker volume ls