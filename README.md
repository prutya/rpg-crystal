# The most awesome rpg in Crystal
Just playing around with [Crystal](https://crystal-lang.org/)

## Prerequisites
1. [Docker](https://www.docker.com/)
1. [docker-compose](https://docs.docker.com/compose/)

## Development
### Start the development environment
```sh
docker-compose -f docker-compose.development.yml up --build
```
### Attach to the environment
```sh
docker exec -it $(docker ps -f "label=prutya.rpg-crystal.app=rpg" -q) zsh
```

## Production build
### Build
```sh
docker build --tag rpg:latest .
```

### Run
```sh
docker run rpg:latest
```
