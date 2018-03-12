CDC=docker-compose
CD=docker
CFLAGS=-d
LDFLAGS=
EXEC=build
SHELL := /bin/bash

#COLORS
GREEN  := $(shell tput -Txterm setaf 2)
WHITE  := $(shell tput -Txterm setaf 7)
YELLOW := $(shell tput -Txterm setaf 3)
RESET  := $(shell tput -Txterm sgr0)

HELPISH = \
          %help; \
          while(<>) { push @{$$help{$$2 // 'options'}}, [$$1, $$3] if /^([a-zA-Z\-]+)\s*:.*\#\#(?:@([a-zA-Z\-]+))?\s(.*)$$/ }; \
          print "usage: make [target]\n\n"; \
          for (sort keys %help) { \
          print "${WHITE}$$_:${RESET}\n"; \
          for (@{$$help{$$_}}) { \
          $$sep = " " x (20 - length $$_->[0]); \
          print "  ${YELLOW}$$_->[0]${RESET}$$sep${GREEN}$$_->[1]\n"; \
          }; \
          print "\n"; }


# Main
all: $(EXEC)

build: ##@tools Construct all targets
	@echo ":: Prepare construction"
	if [ ! -d $(PWD)/php-apache ]; then echo "Make prepare-build" && $(MAKE) prepare-build; fi;
	@echo ":: Creating your_company-client network"
	docker network inspect your_company-client &>/dev/null \
		&& echo ":: Network your_company-client already exists" \
		|| docker network create your_company-client
	@echo ":: Stack construction"
	$(CDC) build --force-rm
	$(MAKE) start

start: ##@basics Start your container stack
	@echo ":: Start up services"
	$(CDC) up $(CFLAGS)
	docker-compose ps

stop: ##@basics Stop your container stack
	@echo ":: Stop services"
	#$(CDC) down --rmi all -v
	$(CDC) down

update: ##@tools Update your application service (Usage: make update service=app)
	@echo ":: Updating ${service} service"
	$(CDC) --no-deps ${service}

provision: ##@tools Start provisionning targeted service (Usage: make provision build-service=app)
	@echo ":: Provisionning service"
	bash provision.sh

restart: ##@basics Stop & start yourt stack (see `stop` and `start`)
	$(MAKE) stop && $(MAKE) start

clean: ##@basics Clean up your services (compose way)
	@echo ":: Cleanup services"
	$(CDC) rm -f

nuke: ##@danger-zone ☢  Destroy all containers and images: Use it a your own risk! ☢
	$(MAKE) stop
	@echo ":: Nuke all project containers"
	$(CDC) rm -f
	@echo ":: Nuke all images"
	$(CD) rmi -f $$(docker images -f "dangling=true" -q)

help: ##@other Show this help.
	@perl -e '$(HELPISH)' $(MAKEFILE_LIST)

