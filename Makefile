#ARGS = $(filter-out $@,$(MAKECMDGOALS))
compass-path=""
MAKEFLAGS += --silent

DC = docker-compose

install:
		mkdir data && docker-compose up 

uninstall:
		docker-compose down --rmi all -v && sudo rm -rf data/
		
reset:
		docker-compose down --rmi all -v && sudo rm -rf data/