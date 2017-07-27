# WORDPRESS
docker run --name wordpressdb -v $(pwd)/SOURCE/sql:/tmp -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=wordpress -d mysql:5.7
docker run -p 8080:80 -e WORDPRESS_DB_PASSWORD=password -d --name wordpress -v $(pwd)/SOURCE/html:/var/www/html --link wordpressdb:mysql  aenetworks/wordpress:1.0

# NODE
rm /Users/superjonbot/Sites/AE/api.ai.docker/SOURCE/node
ln -s /Users/superjonbot/Sites/AE/api.ai.docker/node_docker/node /Users/superjonbot/Sites/AE/api.ai.docker/SOURCE
cd node_docker
docker run -it -p 3000:3000 -v $(pwd)/../SOURCE/node:/usr/src/app aenetworks/node:1.0
