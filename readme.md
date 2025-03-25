# Golang Challange

- This challenge consists of a container that runs the message `Full Cycle Rocks!!`

## How to execute

### Docker

- To download the image and run it directly from **Docker Hub**

```
docker run raulrory/fullcycle
```

- For run the build local

```
docker build -t <image-name> .
docker run --rm <image-name>
```

### Golang

```
go run ./src/hello.go
```

