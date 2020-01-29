FROM jupyter/minimal-notebook
USER root
COPY requirements.txt /tmp
RUN pip install \
        --no-cache-dir \
        -r /tmp/requirements.txt \
    && rm /tmp/requirements.txt
ADD *.ipynb /home/${NB_USER}/
RUN chown -R \
        ${NB_USER}:$(id -gn ${NB_USER}) \
        /home/${NB_USER}
USER ${NB_USER}
