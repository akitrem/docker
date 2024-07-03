# dockerfile con jenkins y terraform

## primero crear la imagen de ubuntu con la instalación de jenkins y terraform, ya que recuerda el dockerfile tiene esos pasos:
docker build . -t ambos

## posterior levantar el contenedor con los puertos:
docker run -it -p 8090:8080 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -v /root/task2:/task2 --name terr_jenk ambos

## dentro del contenedor, iniciar el servicio de jenkins:
## solo escribe: 
jenkins 
## y se va a mostrar el pass de acceso, posterior, entra a la interfaz de jenkins para terminar su configuración.

## para la parte de terraform, pasa los archivos al contenedor de terr_jenk:
![image](https://github.com/akitrem/docker/assets/166667781/108eb4e1-48d4-414c-a1e5-47a2eb8d60b1)

* main,
* variables y
* crea el de terraform.tfvars con los keys de aws

![image](https://github.com/akitrem/docker/assets/166667781/d39cc82c-6bf3-4ac2-bdf9-c358c4d10dbf)

## cuando ya estén, entonces da: 
terrraform init
## veras el proceso de inicio de terrform.

![image](https://github.com/akitrem/docker/assets/166667781/3919656f-2a35-4b0c-b924-c96833ad0d13)

## una vez que todo bien con el comando anterior, entonces da:
terraform plan
## esto es para ver lo que se va a agregar o destruir, según sea el caso:
![image](https://github.com/akitrem/docker/assets/166667781/139697b8-4120-46a2-8651-828e808b1add)
![image](https://github.com/akitrem/docker/assets/166667781/a1b1a230-3002-4b4c-9063-83be07be899d)

## posterior, entonces lanzas el comando:
terraform apply
## y este hará que se comience a crear la EC2, de acuerdo con los valores asignados en el archivo de configuración 

![image](https://github.com/akitrem/docker/assets/166667781/37a7ca24-b792-498e-938f-7a320cc12cef)


![image](https://github.com/akitrem/docker/assets/166667781/1b5b2973-8ca1-4e91-8983-1a89115ca545)





