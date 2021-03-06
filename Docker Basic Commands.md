###To pull an docker image, go to 
hub.docker.com/search
*****
###To pull an image use 
Syntax: docker pull <image-name>:<Tag>
Example: docker pull ubuntu:18.04
*****  

###To see the existing docker images in your local docker application, use 

docker images


###Additionally, To view your dependent child images you can use, which will show all the dependency images as well.

docker images -a
*****

###To run an container we use, the command

Syntax: docker run -d -it --name <container_name> <ImageName>:<Tag> 

Example: 
docker run -d -it --name ub_inst Ubuntu:18.04
( or ) 
docker run -dit --name ub_inst Ubuntu:18.04
Where,
-d  => Detached mode, which means running in the background.
-it  => Interactive mode where the user needs to interact with the docker
--name => the name of the docker container for your reference.
*****

###For moving into the container we use the command.

###As Docker Assigned User
  docker exec -it <container name or ID> bash
exec => Execute
-it => Interactive mode
bash or /bin/bash => method of moving in 
  
###As Main User,
       docker attach <container name or ID>
*****
  
###For exiting a container without closing your docker, use :
^P^Q 
( or ) 
Ctrl + P & Ctrl + Q
*****

###Exposing Ports

To expose ports use

-P option before image name

where -P <SystemPort>:<DockerPort>
Example: docker run -dit -p 8080:8080  --name ub_inst Ubuntu:18.04
*****

###Adding Volumes

###To add volumes and share between containers/ base machine 
use -v  option before image name

Where -v <LocalDirectory>:<DockerVolume>:rw (Read/Write) or ro (Read Only) 
Example: docker run -dit -p 8080:8080 -v ~/suganths_terminal/ubuntu_test_20200912/:/suganth:rw --name ub_inst Ubuntu:18.04 
*****
