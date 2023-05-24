# déploiement docker sur une infrastructure aws

script :  

``sudo yum upgrade && sudo yum update -y ``  
``sudo yum install docker -y``  
``sudo systemctl start docker``  
``sudo systemctl enable docker``  
``sudo docker run --name siteweb-mariadb -p 3306:3306 --env MARIADB_USER=wpuser --env MARIADB_PASSWORD=wppassword --env MARIADB_ROOT_PASSWORD=wprootpassword --env MYSQL_DATABASE=wpdatabase -v vol_mariadb:/var/lib/mysql -d mariadb:latest``  
``sudo docker inspect siteweb-mariadb | grep IPAddress``  
``docker run --name siteweb-wordpress -p 8080:80 -e WORDPRESS_DB_HOST=172.17.0.2 -e WORDPRESS_DB_USER=wpuser -e WORDPRESS_DB_PASSWORD=wppassword -e WORDPRESS_DB_NAME=wpdatabase -e WORDPRESS_TABLE_PREFIX=wp_ -v vol_wordpress:/var/www/html -d wordpress``  
