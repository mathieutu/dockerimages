# Images Docker
Un repo avec quelques images maison (ou pas).

## Développement
Un peu fourre-tout, pas vraiment optimisées, mais pratiques pour développer.

### [laravel-dev](https://hub.docker.com/r/mathieutu/laravel-dev/)
Pour le développement de projets Laravel avec Php 5.6 et 7
- Ubuntu latest
- phpX-fpm git curl phpX-mysqlnd phpX-curl phpX-gd phpX-intl phpX-mcrypt phpX-sqlite phpX-xdebug vim
- yarn & composer
- quelques alias pratiques
- Un path avec tout ce qu'il faut

Voir : 
- le [Dockerfile de 5.6](https://github.com/mathieutu/dockerimages/blob/master/laravel-dev_5.6/Dockerfile)
- le [.bash_profile de 5.6](https://github.com/mathieutu/dockerimages/blob/master/laravel-dev_5.6/.bash_profile)
- le [Dockerfile de 7](https://github.com/mathieutu/dockerimages/blob/master/laravel-dev_7/Dockerfile)
- le [.bash_profile de 7](https://github.com/mathieutu/dockerimages/blob/master/laravel-dev_7/.bash_profile)
```
docker run -v /path/to/files/:/usr/share/nginx/html/ -p 80 -p 443 -d laravel-dev:5.6
```
```
docker run -v /path/to/files/:/usr/share/nginx/html/ -p 80 -p 443 -d laravel-dev:7
```

##To be continued
La suite un peu plus tard...
