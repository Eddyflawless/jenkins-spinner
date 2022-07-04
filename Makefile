DC= @docker-compose -f compose.yaml

.PHONY: up

up:
	$(DC) up

down: 
	$(DC) down	

