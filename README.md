# ECASREI_drupalcode
Drupal Core, Geeral Contributed Modules and Themes

Spin up containers that will set web services using docker.

## Installation

Use the container manager [docker](https://www.docker.com/products/docker-desktop) to install Web services.

## Requirement
### Host 
MySQL server like MariaDB(https://mariadb.org/download/) or Oracl MySQL(https://dev.mysql.com/downloads/)
sed
Composer(https://getcomposer.org/download/)

## Usage

```docker
Unzip the download and
change directory to the unzipped location
If you want to install drupal site like "drupal9.live" run the first script
If you want to access the container use the second script
Create a database on the HOST machine with --username drupal9live  --password 8KUgVM9CpZrePbG2lJY8GVnT
(Please change the password at line 31 on ./drupal/script/drupal file)

```
```bash
sh env.sh
docker compose up -d --build  
```

## Platform System
Windows: - Passed   
Mac: Passed   
Linux: Passed   

## Update Drupal core and it's general modules/themes
run
```bash
composer update --working-dir=drupal9.live/ && rm -rvf drupal9.live/web drupal/vendor drupal9.live/drush drupal9.live/.*
```

it require HOST composer

## Contributing
This is proof of concert that PHP CMS services can run on Docker's Container cluster

Please make sure to update tests as appropriate.

## License
[Unknown](https://)
