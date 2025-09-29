# Aplicação PHP com Docker (Apache + MySQL)

Este projeto contém a aplicação PHP da Aula 03, adaptada para rodar em um contêiner Docker com Apache e MySQL integrados, utilizando volume para persistência dos dados.

---

## 1. Estrutura do Projeto

- `Dockerfile` – Configuração do contêiner com Apache, PHP e MySQL.
- `init.sql` – Script SQL para criar e popular o banco de dados MySQL.
- `app/` – Pasta com a aplicação PHP ajustada para MySQL.
- `README.md` – Este arquivo de instruções.

---

## 2. Configuração do Contêiner Docker

### Passo 1: Construir a imagem Docker
No terminal, dentro da pasta do projeto, execute:

```bash
docker build -t php-mysql-app .
````
### Passo 2: Rodar o contêiner
docker run -d -p 8080:80 -v mysql_data:/var/lib/mysql php-mysql-app

### Passo 3: Acessar a aplicação

Abra o navegador e acesse:

http://localhost:8080
