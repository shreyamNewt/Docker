### The docker file is mainly used for creating custom docker images which can be used to built from other templates and be used to setup your own project environment.
******
### It consists of commands such as:

#### RUN
**Description** : `RUN` command allows you to execute terminal commands while creating your custom docker image.

**Syntax**  : `RUN <Your Terminal Command Here>`

**Example** : `RUN apt update` (Incase of Ubuntu)
******

#### CMD
**Description** : The main purpose of a `CMD` is to execute a command after the creation of docker when it starts running. A good working example might be a restful api you want to run or like starting a database inside your docker container.

**Syntax** : `CMD ["executable","param1","param2"]`

**Example** : `CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]`
******

#### USER
**Description** : `USER` instruction is used to select/switch the user name (or UID) and optionally the user group (or GID) for using while running the image for any RUN, CMD and ENTRYPOINT instructions that follow it in the Dockerfile.

**Example** : `USER root`
******

#### WORKDIR

**Description** :  Define or switch to a different directory. It is like a combination of cd and mkdir -p.

**Example** : `WORKDIR /tmp`
******

#### EXPOSE
**Description** : To specify docker container ports to be exposed inside the docker for usage.

**Example** : `EXPOSE 5432`
******

#### COPY
**Description** : `COPY` instruction copies new files or directories from <src> ( in your build machine) and adds them to the filesystem inside the container at the path <dest>.
  
**Syntax** : `COPY [--chown=<user>:<group>] <src>... <dest>`

**Example** : `COPY requirements.txt ./`
******

#### VOLUME
**Description** : `VOLUME` instruction creates a mount point with the specified name and can be used to share between multiple Dockers and also with docker running machine.


**Example** : `VOLUME /myvol`
******
