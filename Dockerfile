FROM jupyter/minimal-notebook

ENV WORKSHOP_DIR=/home/$NB_USER/Python-Data-Science-Workshop

RUN git clone https://www.github.com/wshand/Python-Data-Science-Workshop.git/ $WORKSHOP_DIR
RUN pip install -r $WORKSHOP_DIR/requirements.txt
