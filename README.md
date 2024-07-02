# docker
## primero levantar la imagen de jenkins
docker build . -t my_jenkins

## posterior levantar el contenedor con los puertos:
docker run -it -p 8090:8080 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -v /root/task2:/task2 --name jenkins_v2 my_jenkins

### dentro del contenedor, iniciar el servicio de jenkins:
### solo escribe: jenkins y se va a mostrar el pass de acceso