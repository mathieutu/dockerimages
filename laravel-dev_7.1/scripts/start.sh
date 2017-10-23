#!/bin/bash

# Disable Strict Host checking for non interactive git clones

mkdir -p -m 0700 /root/.ssh
echo -e "Host *\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config

# Install Extras
if [ ! -z "$DEBS" ]; then
 apt-get update
 apt-get install -y $DEBS
fi

# Tweak nginx to match the workers to cpu's

procs=$(cat /proc/cpuinfo |grep processor | wc -l)
sed -i -e "s/worker_processes 5/worker_processes $procs/" /etc/nginx/nginx.conf

# Set the right permissions (needed when mounting from a volume)
chown -Rf www-data.www-data /usr/share/nginx/html/

# Set the xdebug config if needed
if [[ ! -z "$XDEBUG_ENABLE" ]] ; then
    XdebugFile='/etc/php/7.1/fpm/conf.d/20-xdebug.ini'
    echo "xdebug.remote_enable=1"  >> $XdebugFile

    echo "xdebug.idekey=${XDEBUG_IDEKEY:-PHPSTORM}" >> $XdebugFile
    echo "xdebug.remote_host=${XDEBUG_REMOTE_HOST:-docker.for.mac.localhost}" >> $XdebugFile
fi

# Start supervisord and services
/usr/bin/supervisord -n -c /etc/supervisord.conf
