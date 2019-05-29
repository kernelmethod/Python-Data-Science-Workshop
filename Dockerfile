FROM jupyter/minimal-notebook

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

RUN pip install -r ${HOME}/requirements.txt
