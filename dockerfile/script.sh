# FROM instruction is used to specify the base image for the Docker image being built.
docker build -t arlodel/from from
docker image ls


# RUN instruction is used to execute commands in the Docker image during the build process.
docker build -t arlodel/run run
docker image ls
docker build -t arlodel/run run --progress=plain --no-cache
