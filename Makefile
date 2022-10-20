all:
	# echo "127.0.0.1       ybouali.42.fr" >> /private/etc/hosts
	docker-compose up --build -d

clean:
	docker-compose down

fclean: clean
	docker system prune -a -f
	docker volume rm inception_db-mariadb inception_wp-wordpress