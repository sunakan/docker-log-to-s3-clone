build:
	cd fluentd && make build

s3-clone:
	mkdir -p ./s3-clone

up: s3-clone
	docker-compose up
down:
	docker-compose down
