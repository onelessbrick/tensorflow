FROM nvcr.io/nvidia/tensorflow:20.12-tf1-py3

USER root
RUN pip install jupyterhub
RUN npm install -g configurable-http-proxy
ENV HOME=/workspace
CMD ["jupyterhub"]
