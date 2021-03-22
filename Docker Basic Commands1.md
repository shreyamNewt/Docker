### The docker file is mainly used for creating custom docker images which can be used to built from other templates and be used to setup your own project environment.
******
### It consists of commands such as:

#### RUN
**Description** : `RUN` command allows you to execute terminal commands while creating your custom docker image.

**Syntax**  : `RUN <Your Terminal Command Here>`

**Example** : `RUN apt update` (Incase of Ubuntu)
******

#### CMD
**Description** : The main purpose of a `CMD` is to provide defaults for an executing container.

**Syntax** : `CMD ["executable","param1","param2"]`

**Example** : `CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]`
******

#### USER
**Description** : `USER` instruction sets the user name (or UID) and optionally the user group (or GID) to use when running the image and for any RUN, CMD and ENTRYPOINT instructions that follow it in the Dockerfile

**Example** : `USER root`
******

#### WORKDIR

**Description** :  Define working directory

**Example** : `WORKDIR /tmp`
******

#### EXPOSE
**Description** : To specify docker container listens to specified port

**Example** : `EXPOSE 5432`
******

#### COPY
**Description** : `COPY` instruction copies new files or directories from <src> and adds them to the filesystem of the container at the path <dest>
  
**Syntax** : `COPY [--chown=<user>:<group>] <src>... <dest>`

**Example ** : `COPY requirements.txt ./`
******

#### VOLUME
**Description** : `VOLUME` instruction creates a mount point with the specified name and marks it as holding externally mounted volumes from native host or other containers.

**Example** : `VOLUME /myvol`
******
