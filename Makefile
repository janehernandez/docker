DOCKER_REDIS_CONTAINER   := redis

.SILENT: hello
hello:
	echo Welcome to RMS make system!

up: 
	docker-compose up -d

up-minio: 
	docker-compose up -d minio

cc:
	docker-compose build --no-cache 

down:
	docker-compose down

up-rms:up
	cd ../complaint_tracker && make up

redis-cli:
	docker-compose exec ${DOCKER_REDIS_CONTAINER} redis-cli || true
