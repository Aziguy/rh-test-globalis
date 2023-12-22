# globalis-rh-test-wordpress

## Requirements

- Apache, Mysql, PHP (version 8.2)
- Composer
- Git

## Installation

- Clone this repository
- Create a database and import file `./data/database.sql`
- Copy content of `./data/media` into `./web/media/`
- Copy `./config/local.sample.php` into `./config/local.php`
- Copy `./config/vars.sample.php` into `./config/vars.php` and edit the file
- run command `composer install`
- run command `./vendor/bin/robo install`
- Make sure Apache can write into `./log`,  `./web/media` and `./web/app/themes/wp-cubi-debug-theme/acf-json`

## Administration

WordPress admin is located at `<your-local-url>/wpcb/wp-admin/`

You can login with following credentials :

- username: `username`
- password: `password`

## Note

- Project structure is based on https://github.com/globalis-ms/wp-cubi
- Most of the application custom code is located in `web/app/themes/wp-cubi-debug-theme/`
