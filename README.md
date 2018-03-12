# Introduction

The current documentation describe the install of the complete development stack on `your_company-client` project

## Description and goal

The aim of this document is to obtain all prerequisites to start developing on the `your_company-client` project.

## Dependencies

The current procedure consider that the host system is Ubuntu Xenial 16.04 x86_64 (LTS) based.

## Install

### Docker engine

```
$ sudo apt-get update
$ sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual apt-transport-https ca-certificates
$ sudo apt-key adv \
               --keyserver hkp://ha.pool.sks-keyservers.net:80 \
               --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

$ echo "deb https://apt.dockerproject.org/repo ubuntu-$(lsb_release --codename | cut -f2) main" | sudo tee /etc/apt/sources.list.d/docker.list
$ sudo apt-get update
$ sudo apt-get install docker-engine
```

#### Docker as $USER

```
$ sudo groupadd docker             # optional
$ sudo gpasswd -a ${USER} docker
```

Please logout and login again !

#### Start docker engine

```
$ sudo service docker start
```

Try it:

```
$ docker run hello-world
```

Congrats!

ref: https://docs.docker.com/engine/installation/linux/ubuntulinux/

### Docker Compose


```
$ sudo curl -L "https://github.com/docker/compose/releases/download/1.9.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
```

ref: https://docs.docker.com/compose/install/

### Application

Git clone or unzip this repo.

Then, do the cd-ing stuff into it 

```
$ make
$ make provision 
```

Sometimes before provisioning the `your_company-client/` is not empty due to `docker build` specific `RUN` action and this must be fixed. To pass the provision step you have to

```
$ rm -rf ../your_company-client/*
$ make provision
```

## Access main app container

```
docker exec -it your_company-client_phpfpm sh
```

## Usage

All the main dev commands are available from the container: 

```
$ cd your_company-client/                     # app root
/var/www/your_company-client $ lessc -v
lessc 2.7.2 (Less Compiler) [JavaScript]
/var/www/your_company-client $ bower -v
1.8.0
/var/www/your_company-client $ composer -V
Composer version 1.3.0 2016-12-24 00:47:03
/var/www/your_company-client $ php -v
PHP 7.0.14 (cli) (built: Dec 26 2016 10:05:28) ( NTS )
Copyright (c) 1997-2016 The PHP Group
Zend Engine v3.0.0, Copyright (c) 1998-2016 Zend Technologies
    with Zend OPcache v7.0.14, Copyright (c) 1999-2016, by Zend Technologies
/var/www/your_company-client $ git --version
git version 2.11.0
```

Checkout `make help` from this repo to discover loooot of awesomeness. 


## Behat testing

Checkout the `docker-compose_test.yml` file which contain the complete selenium stack service.

To launch the `behat --tags @javascript` suite you must have this stask up and running :

```bash
$ docker-compose up -f docker-compose_test.yml     # or
$ docker-compose up -d -f docker-compose_test.yml  # daemonized
```



Have fun !


