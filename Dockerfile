FROM php:8.2-apache

# Instala extensões necessárias do PHP
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Instala e configura MySQL no mesmo container
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y default-mysql-server && \
    rm -rf /var/lib/apt/lists/*

# Copia a aplicação PHP para o Apache
COPY ./app/ /var/www/html/

# Copia o script SQL de inicialização
COPY ./init.sql /docker-entrypoint-initdb.d/init.sql

# Expõe as portas do Apache e do MySQL
EXPOSE 80 3306

# Script de inicialização: inicia MySQL, cria banco, roda script e sobe Apache
CMD service mysql start && \
    mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root'; FLUSH PRIVILEGES;" && \
    mysql -u root -proot < /docker-entrypoint-initdb.d/init.sql && \
    apache2-foreground
