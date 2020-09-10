#!/bin/bash
docker run --rm  --volume $PWD:/app composer create-project --prefer-dist laravel/laravel webData
docker-compose up -d --build 
docker exec php php artisan storage:link
docker exec -it php chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache
