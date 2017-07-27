Documentation 
J.Robles 7.25.17

buildcontainers.sh : builds all containers
startcontainers.sh : starts docker containers
stopcontainers.sh : stops and removes docker containers

reference
—————————
docker ps # list running containers
docker ps -a # list all containers
docker rm [container id] # remove container
docker rm $(docker ps -a -q) # remove all containers
docker stop [container id] # stop container
docker stop $(docker ps -a -q) #stop all containers
docker exec -it [container id] /bin/bash # container shell
docker inspect [container id] # inspect container
docker images -a #list images
docker rmi [image] #remove image
docker rmi $(docker images -q) # remove all images


backup/restore database
———————————————————————
mysqldump -ppassword wordpress > tmp/backup.sql
mysql -ppassword wordpress < tmp/backup.sql