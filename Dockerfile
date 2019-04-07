# Use Jupyter's minimal-notebook Dockerfile as a basis
# Get the latest image tag at:
# https://hub.docker.com/r/jupyter/minimal-notebook/tags/
# Inspect the Dockerfile at:
# https://github.com/jupyter/docker-stacks/tree/master/minimal-notebook/Dockerfile
FROM jupyter/minimal-notebook:latest

LABEL maintainer="Will Shand <wish5031@colorado.edu>"

USER root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -yq --no-install-recommends \
    python3-pip

# Now add dependencies from the requirements.txt
USER jovyan
ADD requirements.txt $HOME
RUN pip install --no-cache-dir -r $HOME/requirements.txt
