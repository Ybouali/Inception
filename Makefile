all:
	docker-compose -f ./srcs/docker-compose.yml up --build -d

clean:
	docker-compose -f ./srcs/docker-compose.yml down

fclean: clean
	docker system prune -a -f
	docker volume rm srcs_wp-wordpress srcs_db-mariadb srcs_porta
