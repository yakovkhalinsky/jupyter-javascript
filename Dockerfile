FROM jupyter/base-notebook:latest

USER root

# install node
RUN apt-get update && \
  apt-get install -y curl gnupg2 libzmq3-dev build-essential && \
  curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - && \
  npm install -g jp-babel --unsafe-perm && \
  jp-babel-install --install=global && \
  python -m pip install jupyterlab && \
  chown -R jovyan /home/jovyan

VOLUME ["/home/jovyan"]
WORKDIR /home/jovyan/work

EXPOSE 8888

USER jovyan

ENTRYPOINT [ "jupyter", "lab" ]
