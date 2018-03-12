#!/usr/bin/env bash

Color_Off='\033[0m'       # Text Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m' # Cyan

# -------------------------
#   Auto generated file
# -------------------------

# setting basic commands
dexec="docker exec --user www-data your_company-client_apache"
dexec_asroot="docker exec --user root your_company-client_apache"
composer="${dexec} composer --working-dir=/var/www/html/YourCompany/your_company-client"
sf="${dexec} php /var/www/html/YourCompany/your_company-client/bin/console"



# Add Symfony right access
echo -e "$Green \n chown -R www-data:www-data /var/www/html/YourCompany/your_company-client :\n $Color_Off"
${dexec_asroot} chown -R www-data:www-data /var/www/html/YourCompany/your_company-client
echo -e "$Green \n chmod -Rf 777 /var/www/html/YourCompany/your_company-client/var :\n $Color_Off"
${dexec_asroot} chmod -Rf 777 /var/www/html/YourCompany/your_company-client/var
echo -e "$Green \n chmod -Rf 777 /var/www/html/YourCompany/your_company-client/web :\n $Color_Off"
${dexec_asroot} chmod -Rf 777 /var/www/html/YourCompany/your_company-client/web

echo -e "$Green \n mkdir -p /var/lib/php/sessions :\n $Color_Off"
${dexec_asroot} mkdir -p /var/lib/php/sessions
echo -e "$Green \n chown -R www-data:www-data /var/lib/php/sessions :\n $Color_Off"
${dexec_asroot} chown -R www-data:www-data /var/lib/php/sessions
echo -e "$Green \n chmod -Rf 777  /var/lib/php/sessions :\n $Color_Off"
${dexec_asroot} chmod -Rf 777  /var/lib/php/sessions

echo -e "$Green \n mkdir -p /var/www/.config :\n $Color_Off"
${dexec_asroot} mkdir -p /var/www/.config
echo -e "$Green \n chown -R www-data:www-data /var/www/.config :\n $Color_Off"
${dexec_asroot} chown -R www-data:www-data /var/www/.config
echo -e "$Green \n chmod -Rf 777  /var/www/.config :\n $Color_Off"
${dexec_asroot} chmod -Rf 777  /var/www/.config

echo -e "$Green \n mkdir -p /var/www/.cache :\n $Color_Off"
${dexec_asroot} mkdir -p /var/www/.cache
echo -e "$Green \n chown -R www-data:www-data /var/www/.cache :\n $Color_Off"
${dexec_asroot} chown -R www-data:www-data /var/www/.cache
echo -e "$Green \n chmod -Rf 777  /var/www/.cache :\n $Color_Off"
${dexec_asroot} chmod -Rf 777  /var/www/.cache

echo -e "$Green \n mkdir -p /var/www/.local :\n $Color_Off"
${dexec_asroot} mkdir -p /var/www/.local
echo -e "$Green \n chown -R www-data:www-data /var/www/.local :\n $Color_Off"
${dexec_asroot} chown -R www-data:www-data /var/www/.local
echo -e "$Green \n chmod -Rf 777  /var/www/.local :\n $Color_Off"
${dexec_asroot} chmod -Rf 777  /var/www/.local

echo -e "$Green \n mkdir /var/www/.composer/ :\n $Color_Off"
${dexec_asroot} mkdir /var/www/.composer/
echo -e "$Green \n chown -R www-data:www-data /var/www/.composer/ :\n $Color_Off"
${dexec_asroot} chown -R www-data:www-data /var/www/.composer/
echo -e "$Green \n chmod -Rf 777  /var/www/.composer/ :\n $Color_Off"
${dexec_asroot} chmod -Rf 777  /var/www/.composer/

echo -e "$Green \n mkdir /var/www/.npm :\n $Color_Off"
${dexec_asroot} mkdir /var/www/.npm
echo -e "$Green \n chown -R www-data:www-data /var/www/.npm :\n $Color_Off"
${dexec_asroot} chown -R www-data:www-data /var/www/.npm
echo -e "$Green \n chmod -Rf 777  /var/www/.npm :\n $Color_Off"
${dexec_asroot} chmod -Rf 777  /var/www/.npm

echo -e "$Green \n mkdir /usr/lib/node_modules/ :\n $Color_Off"
${dexec_asroot} mkdir /usr/lib/node_modules/
echo -e "$Green \n chown -R www-data:www-data /usr/lib/node_modules/ :\n $Color_Off"
${dexec_asroot} chown -R www-data:www-data /usr/lib/node_modules/
echo -e "$Green \n chmod -Rf 777  /usr/lib/node_modules/ :\n $Color_Off"
${dexec_asroot} chmod -Rf 777  /usr/lib/node_modules/

echo -e "$Green \n mkdir /usr/lib/node_modules/gulp-cli :\n $Color_Off"
${dexec_asroot} mkdir /usr/lib/node_modules/gulp-cli
echo -e "$Green \n chown -R www-data:www-data /usr/lib/node_modules/gulp-cli :\n $Color_Off"
${dexec_asroot} chown -R www-data:www-data /usr/lib/node_modules/gulp-cli
echo -e "$Green \n chmod -Rf 777  /usr/lib/node_modules/gulp-cli :\n $Color_Off"
${dexec_asroot} chmod -Rf 777  /usr/lib/node_modules/gulp-cli

echo -e "$Green \n npm install gulp-cli -g :\n $Color_Off"
${dexec_asroot} sh -c "npm install -g gulp-cli"
${dexec_asroot} sh -c "npm install gulp-clean --no-bin-links"
${dexec_asroot} sh -c "npm install gulp-clean --no-bin-links"
${dexec_asroot} sh -c "npm install gulp-concat --no-bin-links"
${dexec_asroot} sh -c "npm install gulp-copy --no-bin-links"
${dexec_asroot} sh -c "npm install gulp-if --no-bin-links"
${dexec_asroot} sh -c "npm install gulp-less --no-bin-links"
${dexec_asroot} sh -c "npm install gulp-livereload --no-bin-links"
${dexec_asroot} sh -c "npm install gulp-rename --no-bin-links"
${dexec_asroot} sh -c "npm install gulp-uglify --no-bin-links"
${dexec_asroot} sh -c "npm install gulp-uglifycss --no-bin-links"
${dexec_asroot} sh -c "npm install gulp-order --no-bin-links"
${dexec_asroot} sh -c "npm install gulp-jquery-closure --no-bin-links"
${dexec_asroot} sh -c "npm install gulp-jshint --no-bin-links"
${dexec_asroot} sh -c "npm install jshint --no-bin-links"

# Install project dependencies
echo -e "$Green \n composer install --working-dir=/var/www/html/YourCompany/your_company-client --prefer-dist -vv :\n\n $Color_Off"
${dexec} composer install --working-dir=/var/www/html/YourCompany/your_company-client --prefer-dist -vv
echo -e "$Green \n bin/console assets:install --symlink :\n\n $Color_Off"
${dexec} bin/console assets:install --symlink
echo -e "$Green \n bower install :\n\n $Color_Off"
${dexec} bower install #deprecated !


echo "

:: Crawl to:
::  > API: http://192.168.33.25:8280
::  > Doc: http://192.168.33.25:8280/app_dev.php/doc/
::  > ELK: http://0.0.0.0:8281/

:: Execs:
::  $ docker exec your_company-client_apache <command>
::  $ docker exec -it your_company-client_apache sh
::  $ ${dexec} composer --working-dir=/var/www/html/YourCompany/your_company-client

:: Aliasing:
::  $ alias your_company-docker-sh='docker exec -it your_company-client_apache sh -c "cd YourCompany/your_company-client && sh"'
::  $ alias your_company-root-docker-sh='docker exec -it -u root your_company-client_apache sh -c "cd YourCompany/your_company-client && sh"'
::  $ alias your_company-docker_exec='${dexec}'
::  $ alias your_company-docker_composer='${composer}'
::  $ alias your_company-docker_sf='${sf}'
::  $ alias your_company-docker_cc='${dexec} rm -rf /var/www/html/YourCompany/var/cache/*'

::  Most used commands:
::    your_company-docker_composer install --prefer-dist -v
::    your_company-docker_sf cache:clear
"
exit 0
