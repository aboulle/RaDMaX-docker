# RaDMaX-docker

Dockerfile and docker-compose.yml to run locally the RaDMaX-online project : https://github.com/aboulle/RaDMaX-online

## Prerequisites

1. Install [Docker](https://docs.docker.com/install/)
2. Install [Docker Compose](https://docs.docker.com/compose/install/)

## How to

Clone, build and run :
 
```
git clone https://github.com/aboulle/RaDMaX-docker
cd RaDMaX-docker
docker-compose up -d 
```

Go to http://localhost:8866

## More info

- Docker : https://docs.docker.com/
- Docker Compose : https://docs.docker.com/compose/
- RaDMaX : https://github.com/aboulle/RaDMaX-online

## Help

Pull base image

	docker pull continuumio/miniconda3:latest

Build

	docker build ./build-radmax/ -t radmax:test
