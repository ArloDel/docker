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
