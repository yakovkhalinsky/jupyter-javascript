# jupyter-javascript

A Jupyter Docker image with Node.js and ijavascript installed

### ports

`8888`

### volumes

`/home/jovyan`

### usage

```
docker run \
-d \
-p 8888:8888 \
-v $(pwd)/notebook:/home/jovyan \
--name jupyter russianator/jupyter-javascript
```

### scripts

`build.sh` - example build script using `Dockerfile` in this repository.

`start.sh` - example start script using current directory that contains a `notebooks` directory to mount into container to save data on your host. 