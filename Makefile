DOCKER_COMPOSE_FILE = srcs/docker-compose.yml

all: build up

build:
	docker compose -f $(DOCKER_COMPOSE_FILE) build

up:
	mkdir -p /home/ktomoya/data
	mkdir -p /home/ktomoya/data/database /home/ktomoya/data/wordpress
	docker compose -f $(DOCKER_COMPOSE_FILE) up -d --build

down:
	docker compose -f $(DOCKER_COMPOSE_FILE) down

execn:
	docker exec -it nginx bash

execw:
	docker exec -it wp-php bash

execm:
	docker exec -it mariadb bash

rmvol:
	sudo rm -rf /home/ktomoya/data/database
	sudo rm -rf /home/ktomoya/data/wordpress

re: down rmvol build up

log:
	docker compose -f $(DOCKER_COMPOSE_FILE) logs -f

ps:
	docker ps

psa:
	docker ps -a

clean:
	docker compose -f $(DOCKER_COMPOSE_FILE) down --rmi all -v

restart:
	docker compose -f $(DOCKER_COMPOSE_FILE) restart
