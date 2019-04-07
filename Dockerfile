# Use Jupyter"s minimal-notebook Dockerfile as a basis
# Get the latest image tag at:
# https://hub.docker.com/r/jupyter/minimal-notebook/tags/
# Inspect the Dockerfile at:
# https://github.com/jupyter/docker-stacks/tree/master/minimal-notebook/Dockerfile
ARG BASE_CONTAINER=jupyter/minimal-notebook:latest
FROM $BASE_CONTAINER

LABEL maintainer="Will Shand <wish5031@colorado.edu>"

# Add remaining dependencies
USER $NB_UID
RUN conda install --yes --quiet \
    "ipywidgets==7.4.2" \
    "Keras==2.2.4" \
    "matplotlib==3.0.2" \
    "networkx==2.2" \
    "numpy==1.15.4" \
    "pandas==0.23.4" \
    "plotly==3.7.1" \
    "python-dateutil==2.7.5" \
    "pytz==2018.7" \
    "scikit-learn==0.20.2" \
    "scipy==1.2.0" \
    "seaborn==0.9.0" \
    "statsmodels==0.9.0" \
    "tensorboard==1.13.1" \
    "tensorflow==1.13.1" && \
    conda build purge-all && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# Download the notebooks
RUN cd /home/$NB_USER && \
    git clone https://github.com/wshand/Python-Data-Science-Workshop.git
