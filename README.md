# docker

## primero levantar la imagen de jenkins
docker build . -t my_jenkins

## posterior levantar el contenedor con los puertos:
docker run -it -p 8090:8080 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -v /root/task2:/task2 --name jenkins_v2 my_jenkins

## dentro del contenedor, iniciar el servicio de jenkins:
## solo escribe: 
jenkins 
## y se va a mostrar el pass de acceso

## para la parte de terraform, pasa los archivos main, variables y crea el de terraform.tfvars con los keys de aws
## cuando ya estén, entonces da: 
terrraform init
## veras el proceso de inicio de terrform.

![image](https://github.com/akitrem/docker/assets/166667781/3919656f-2a35-4b0c-b924-c96833ad0d13)
