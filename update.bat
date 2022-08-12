docker commit json-hives-web-site-mariadb-1 dnasoft/json-hives-web-site-mariadb:%1
docker commit json-hives-web-site-wordpress-1 dnasoft/json-hives-web-site-wordpress:%1

docker push dnasoft/json-hives-web-site-mariadb:%1
docker push dnasoft/json-hives-web-site-wordpress:%1





docker run -volumes-from=wordpress-1 -v C:\Users\stefa\OneDrive\jsonHIVES\backup:/tmp dnasoft/json-hives-web-site-wordpress tar czf /tmp/wordpress_data_backup.tar.gz -C /bitnami/wordpress .

docker run -volumes-from=mariadb-1 -v C:\Users\stefa\OneDrive\jsonHIVES\backup:/tmp dnasoft/json-hives-web-site-mariadb tar czf /tmp/mariadb_data_backup.tar.gz -C /bitnami/mariadb .
