FROM jupyter/base-notebook:latest

USER root

# install node
RUN apt-get update && apt-get install -y curl gnupg2 libzmq3-dev build-essential
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

# install ijavascript
RUN npm install -g ijavascript --unsafe-perm && ijsinstall --install=global && chown -R jovyan /home/jovyan

VOLUME ["/home/jovyan"]
WORKDIR /home/jovyan/work

EXPOSE 8888

USER jovyan
