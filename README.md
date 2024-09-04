# Creating our Docker Dev Environment

## Prerequisites:

1. Basics of Docker. If you are not familiar with docker please watch this [video](https://youtu.be/b0HMimUb4f0).
2. Docker Desktop needs to be installed on your machine. You can refer to the [installation guide](https://www.docker.com/products/docker-desktop/) from Docker for the same for your specific machine.

## Requirements for the Environment

1. **Linux Based**: Ubuntu 24:04
2. **Java Version**: JDK 22
3. GCC/C++ Compiler
4. **Build Tools**: Gradle for Java and CMake for C++

## What is a Docker Dev Environment?

A Docker dev environment allows developers to work with consistent, isolated setups that can be easily shared and deployed across different machines and platforms

## Downloading the Dockerfile and Docker Compose

In your working directory for your code which you want to make accessible to the container, download the `Dockerfile` and `compose-dev.yaml` from this repo.

Your folder should now have both of the above-mentioned files.

## Creating the Dev Environment

Open *Docker Desktop* and navigate to *Dev Environments* situated in the left panel.

![Screenshot 2024-09-05 at 12.08.40 AM.png](https://res.craft.do/user/full/236ddc81-ff42-14cf-9959-adcbc61616dc/doc/62FD96E4-9940-45F5-995C-AC021DA01333/3147D2C1-3A8A-4AE8-A486-0383E7B9ED4F_2/Ydbnavn2uPputdFvnTIPwCFmERalr76YGNNqeyHgcxcz/Screenshot%202024-09-05%20at%2012.08.40AM.png)

Click on *Create* to start creating a new dev environment

For the *Setup* section give the container any name you prefer and set the path to the directory with the `Dockerfile` and `compose-docker.yaml` files.

Click next and Docker will create your environment.

## Running the container with an interactive terminal

From *Docker Desktop* run the docker dev container by clicking on the *Play* button.

To open the interactive terminal for the container:

Get the container id:

```json
docker ps
```

My Output:

```json
CONTAINER ID   IMAGE               COMMAND            CREATED             STATUS         PORTS     NAMES
771625b30774   ubuntu-dev-e6-app   "sleep infinity"   About an hour ago   Up 9 seconds             ubuntu-dev-e6-app-1
```

Copy the container id from the CONTAINER ID column for your particular dev container name.

### Opening the interactive terminal for the container

```json
docker exec -it <container_id_or_name> /bin/bash
```

This opens the internal BASH for the container.

## Running the project directly from IntelliJ

You can refer to this [link](https://www.jetbrains.com/help/idea/running-a-java-app-in-a-container.html#run_java_app_in_container) for instructions on how to run directly on the docker image.

Set the *Context Folder* to the directory with the previously downloaded `Dockerfile`.

