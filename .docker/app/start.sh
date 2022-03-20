#!/bin/bash

composer install

php artisan key:generate
php artisan config:cache
php artisan migrate

chmod -R 777 /var/www/storage/
chmod -R 777 /var/www/storage/*
chmod -R 777 /var/www/storage/logs/
chmod -R 777 /var/www/storage/logs/*

php-fpm
