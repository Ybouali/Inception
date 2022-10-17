# TO DELETE ALL IMEGES "docker rmi $(docker images -a -q)"
# TO ADD A .env file to the container --env-file ../../../srcs/.env
# 
# TO DELETE ALL VOLUMES "docker volume rm $(docker volume ls -q)"

# TO DELETE ALL CASHES "docker system -a -f"

# EXPORT DATA FROM DOCKER CONTAINER IN THE EXAMPLE I WELL EXPORT WORDPRESS DATABASE FROM MARIADB CONTAINER
# docker exec mariadb /usr/bin/mysqldump -u root --password=root wordpress > wordpress.sql

all: 
	docker-compose build
	docker-compose up

clean:
	docker-compose down
	docker rmi $(docker images -a -q)
	docker system prune -a -f