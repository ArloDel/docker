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