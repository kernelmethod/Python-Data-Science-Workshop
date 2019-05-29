FROM jupyter/minimal-notebook

COPY . ${HOME}
RUN pip install -r ${HOME}/requirements.txt
