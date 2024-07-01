.SILENT: hello
hello:
	echo Welcome to RMS make system!

up: 
	docker-compose up -d

cc:
	docker-compose build --no-cache 

down:
	docker-compose down

up-rms:up
	cd ../complaint_tracker && make up
