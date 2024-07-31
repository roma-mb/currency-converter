
### Enviroment:

#### DOCKER

required:
```
Docker:27.1.1
Docker Compose:v2.29.1
```

Env:

```
Copy, env.example and rename to .env
```

Update ENV:
```
## ----  MAILTRAP.IO ---- ##
MAIL_MAILER=smtp
MAIL_HOST=sandbox.smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=456784c7f7444784dd
MAIL_PASSWORD=***3744
MAIL_ENCRYPTION=null

## --- MYSQL --- ##
DB_HOST=database
```

Run local folder:
```
make build
make up
make dev
```

#### MANUAL

required:
```JSON
"php": "^8.3",
"composer": "2.7.7"
"node": "20.12.2"
"npm": "10.8.1"
"mysql": "8.0.37"
```

#### Backend:

Composer:

```
php composer.phar install | composer install
```

Env:

```
Copy, env.example and rename to .env
```

Database:
```
CREATE USER admin@localhost IDENTIFIED BY 'admin';
GRANT ALL ON *.* TO admin@localhost;
FLUSH PRIVILEGES;

CREATE DATABASE currency_converter;
```

Update ENV:
```
## ----  MAILTRAP.IO ---- ##
MAIL_MAILER=smtp
MAIL_HOST=sandbox.smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=456784c7f7444784dd
MAIL_PASSWORD=***3744
MAIL_ENCRYPTION=null

## --- MYSQL ENV --- ##
DB_HOST=127.0.0.1
```

Laravel artisan:

```
> php artisan key:generate
> php artisan migrate
> php artisan seed
```

Vue.js:

```
> npm install
```

Up server:

```
> php artisan serve
> npm run dev

http://127.0.0.1:8000/
```

#### Scripts

[phpunit]

```
composer unit
composer unitf
```

PHP CS Fixer

```
composer cs-fixer-dry // Visualizar alterações a serem ajustadas
composer cs-fixer // Ajustar e modificar
```


#### Postman
[Collection](https://www.postman.com/rom-mb/workspace/currencyconverter/collection/6885147-4f3359b4-8d3f-40e1-a812-645125ef9348?action=share&creator=6885147)
