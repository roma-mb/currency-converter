build:
	docker compose build --no-cache

stop:
	docker compose stop

up:
	docker compose up -d

down:
	docker compose down

composer-install:
	#docker run --rm -v .:/app composer install
	docker exec -it laravel-app composer install

composer-autoload:
	#docker run --rm -v .:/app composer dump-autoload
	docker exec -it laravel-app composer dump-autoload

npm-install:
	#docker run --rm -v .:/app -w /app node npm install
	docker exec -it node-app npm install

storage-change:
	docker exec -it laravel-app chown -R root:www-data storage

storage-permission:
	docker exec -it laravel-app chmod -R 777 ./storage

key-generate:
	docker exec -it laravel-app php artisan key:generate

db-migrate:
	docker exec -it laravel-app php artisan migrate

db-seed:
	docker exec -it laravel-app php artisan db:seed

dev: composer-install npm-install storage-change storage-permission key-generate db-migrate db-seed
		@echo "Running on http://localhost:8000"
