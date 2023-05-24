## tp

but : lancer un wordpress avec stockage des données mariadb persistant dans un volume

# commande 
docker run --name siteweb-mariadb --env MARIADB_USER=wpuser --env MARIADB_PASSWORD=wppassword --env MARIADB_ROOT_PASSWORD=wprootpassword --env MYSQL_DATABASE:wpdatabase -v vol_mariadb:/var/lib/mysql -d mariadb:latest

# attention dans l'installation de la bdd dans wp indiquer ip du container de mariadb (ouvrir terminal du container dans docker)

docker run --name siteweb-wordpress -p 8080:80 -e WORDPRESS_DB_HOST=172.17.0.2 -e WORDPRESS_DB_USER=wpuser -e WORDPRESS_DB_PASSWORD=wppassword -e WORDPRESS_DB_NAME=wpdatabase -e WORDPRESS_TABLE_PREFIX=wp_ -d wordpress

# docker 

crée 2 dockerfile dans 2 dossiers différents 

# docker compose 

crée un docker compose avec lancement bdd en 1er et wordpress apres en partant des images que je viens de crée 