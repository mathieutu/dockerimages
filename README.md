# Images Docker
Un repo avec quelques images maison (ou pas).

## Installation
```
cd /path/to/Dockerfile
docker build -t name:tag .
```

## Développement
Un peu fourre-tout, pas vraiment optimisées, mais pratiques pour dévelloper.

### [laravel-dev:5.6](laravel-dev_5.6/)
Adapté de [ngineered/nginx-php-fpm](https://github.com/ngineered/nginx-php-fpm) pour Laravel (_toutes les fonctions et la doc marchent normalement_)
- Debian latest
- supervisor nginx php5-fpm git curl php5-mysqlnd php5-curl php5-gd php5-intl php5-mcrypt php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-pgsql php5-ldap pwgen
- nodejs gulp-cli grunt-cli bower
- composer
- quelques alias pratiques de base et `a="php artisan"`
- PATH=./node_modules/.bin:./vendor/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```
docker run -v /path/to/files/:/usr/share/nginx/html/ -p 80 -p 443 -d laravel-dev:5.6
```

##To be continued
La suite un peu plus tard...
