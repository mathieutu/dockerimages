# Images Docker
Un repo avec quelques images maison (ou pas).

## Développement
Un peu fourre-tout, pas vraiment optimisées, mais pratiques pour développer.

### [laravel-dev:5.6](https://hub.docker.com/r/mathieutu/laravel-dev/)
Pour le développement de projets Laravel avec Php 5.6
- Ubuntu latest
- php5-fpm git curl php5-mysqlnd php5-curl php5-gd php5-intl php5-mcrypt php5-sqlite php5-xdebug vim
- yarn & composer
- quelques alias pratiques
- Un path avec tout ce qu'il faut

Voir : 
- le [Dockerfile](https://github.com/mathieutu/dockerimages/blob/master/laravel-dev_5.6/Dockerfile)
- le [.bash_profile](https://github.com/mathieutu/dockerimages/blob/master/laravel-dev_5.6/.bash_profile)
```
docker run -v /path/to/files/:/usr/share/nginx/html/ -p 80 -p 443 -d laravel-dev:5.6
```

##To be continued
La suite un peu plus tard...
