### The docker file is mainly used for creating custom docker images which can be used to built from other templates and be used to setup your own project environment.
******
### It consists of commands such as:

#### RUN
**Description** : `RUN` command allows you to execute terminal commands while creating your custom docker image.
**Syntax**  : `RUN <Your Terminal Command Here>`
**Example** : `RUN apt update` (Incase of Ubuntu)
******

`CMD`
#### Set the default command to run when starting the container
Example : ``
******

`USER`
#### USER instruction sets the user name (or UID) and optionally the user group (or GID) to use when running the image and for any RUN, CMD and ENTRYPOINT instructions that follow it in the Dockerfile
Example : `USER root`
******

`WORKDIR`
#### Define working directory
Example : `WORKDIR /tmp`
******

`EXPOSE`
#### To specify docker container listens to specified port
Example : `EXPOSE 5432`
******

`COPY`
#### COPY instruction copies new files or directories from <src> and adds them to the filesystem of the container at the path <dest>
Example : `COPY [--chown=<user>:<group>] <src>... <dest>`
******

`VOLUME` 
#### VOLUME instruction creates a mount point with the specified name and marks it as holding externally mounted volumes from native host or other containers.
Example : `VOLUME /myvol`
******
