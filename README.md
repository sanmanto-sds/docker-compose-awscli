# Docker image with docker, docker-compose, awscli and make

[Docker](https://hub.docker.com/_/docker/) with [Docker Compose (python3)](https://github.com/docker/compose) installed for CI.

## Usage

```bash
docker pull codiv/docker-compose-awscli
```

[Docker Hub](https://hub.docker.com/r/codiv/docker-compose-awscli)

## CI

You can use it with ci and docker-in-docker.

```yml
image: codiv/docker-compose-awscli

services:
  - docker:dind

test:
  script:
    - docker-compose build
    - docker-compose run --rm django make ci-test
``` 
