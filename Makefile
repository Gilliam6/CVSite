all:
	docker-compose  -f ./srcs/docker-compose.yml up -d --build --force-recreate
logs:
	@docker-compose -f ./srcs/docker-compose.yml logs
ps:
	@docker-compose -f ./srcs/docker-compose.yml ps
	@echo "------------------------------------------"
	docker volume ls
	@echo "------------------------------------------"
	docker network ls
down:
	docker-compose -f ./srcs/docker-compose.yml down

PONY: all logs docker down ps

