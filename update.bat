docker commit json-hives-web-site-mariadb-1 dnasoft/json-hives-web-site-mariadb:%1
docker commit json-hives-web-site-wordpress-1 dnasoft/json-hives-web-site-wordpress:%1

docker push dnasoft/json-hives-web-site-mariadb:%1
docker push dnasoft/json-hives-web-site-wordpress:%1
