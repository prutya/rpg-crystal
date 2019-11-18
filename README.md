# The most awesome rpg in Crystal
Just playing around with [Crystal](https://crystal-lang.org/)

## Prerequisites
1. [Docker](https://www.docker.com/)
1. [docker-compose](https://docs.docker.com/compose/)

## Development
### Start the development environment
```sh
docker-compose up --build --detach app
```
### Attach to the environment
```sh
docker exec --interactive --tty  $(docker ps --quiet --filter "label=prutya.rpg-crystal.service=app") zsh
```

## Testing
### Run linters and specs
```sh
scripts/test.sh
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
