DOCKER_REDIS_CONTAINER   := redis

.SILENT: hello
hello:
	echo Welcome to Docker make system!

up: 
	docker-compose up -d

up-minio: 
	docker-compose up -d minio

cc:
	docker-compose build --no-cache 

down:
	docker-compose down

redis-cli:
	docker-compose exec ${DOCKER_REDIS_CONTAINER} redis-cli || true
