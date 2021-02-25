FROM nvcr.io/nvidia/tensorflow:20.12-tf1-py3

USER root
RUN pip install jupyterhub
RUN /usr/local/nvm/versions/node/v15.2.1/bin/npm install -g configurable-http-proxy
ENV HOME=/workspace
CMD ["/usr/local/binjupyterhub"]
