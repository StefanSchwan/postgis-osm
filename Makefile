#ARGS = $(filter-out $@,$(MAKECMDGOALS))
compass-path=""
MAKEFLAGS += --silent

DC = docker-compose

install:
		mkdir data && ${DC} up 

uninstall:
		${DC} down --rmi all -v && sudo rm -rf data/

reset:
		${DC} down -v && sudo rm -rf data/

start:
		${DC} up