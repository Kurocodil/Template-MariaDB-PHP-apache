# Container Template for Docker-compose MariaDB PHP-apache
### Description
Example of a container template for MariaDB PHP8.3-apache created during the DWWM formation.

## Structure
```
config/
    mariadb/
        init.sql
    php/
        000-default.conf
        Dockerfile
        entrypoint.sh

src/
    app/
        classes/
            .gitignore

public/
    assets/
        imgs/
            image.jpg
        movies/
    index.php

docker-compose.yml
README.md
```
### Clone the project 
```git clone https://github.com/Kurocodil/Template-MariaDB-PHP-apache.git```
## Prerequisites
- PHP
- Docker
- MariaDB
## Commands to use
### basics
#### **prefix :** ``` docker-compose ```
- build : ``` up --build ```
- Launch services :``` up -d ```
- Check containers statut :``` ps ```
- Stop services :``` down ```

### Accessibilities
- Accessing PHP container :``` docker exec -it php-container bash ```
- Accessing MariaDB container :``` docker exec -it mariadb-container mysql -u appuser -p ```

## Procedure

1. Install Docker (Docker Desktop)
2. VSCODE : install Docker extension from Microsoft
3. Clone the project
4. Launch services
5. Connect to localhost:7070/