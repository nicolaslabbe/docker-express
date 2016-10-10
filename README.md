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

### restart

```shell
docker restart -t 0 express-hello
```