PROJECT=traefik-reverse-proxy

build:
	docker compose -p ${PROJECT} -f compose.yaml build

start:
	docker compose -p ${PROJECT} -f compose.yaml up -d --force-recreate

stop:
	docker compose -p ${PROJECT} -f compose.yaml down

clean:
	docker compose -p ${PROJECT} -f compose.yaml down -v
