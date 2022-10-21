all:
	docker-compose -f ./srcs/docker-compose.yaml up --build -d

clean:
	docker-compose -f ./srcs/docker-compose.yaml down

fclean: clean
	docker system prune -a -f
	docker volume rm srcs_wp-wordpress srcs_db-mariadb
