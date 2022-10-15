# TO DELETE ALL IMEGES "docker rmi $(docker images -a -q)"
# TO ADD A .env file to the container --env-file ../../../srcs/.env
# 
# TO DELETE ALL VOLUMES "docker volume rm $(docker volume ls -q)"

# TO DELETE ALL CASHES "docker system -a -f"

all: 
	docker-compose build
	docker-compose up

clean:
	docker-compose down
	docker rmi $(docker images -a -q)
	docker system prune -a -f