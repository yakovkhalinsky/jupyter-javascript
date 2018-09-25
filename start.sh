docker run \
-d \
-p 8888:8888 \
-v $(pwd)/notebook:/home/jovyan \
--name jupyter russianator/jupyter-javascript