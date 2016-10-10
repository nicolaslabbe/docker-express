# Repo

This is a sample docker/nodejs express repo

This repo contains:
- Dockerfile
- package json with dependancies
- cmd to run
- nodemon js task to watch src

# build

```shell
docker build -t nicolaslabbe/express-hello .
```

# run

```shell
docker run -p 49160:8003 --name express-hello -v ${PWD}/src:/usr/src/app/src -d nicolaslabbe/express-hello
```

### logs

```shell
docker logs express-hello
```

tail logs

```shell
docker logs --follow express-hello
```

### restart

```shell
docker restart -t 0 express-hello
```