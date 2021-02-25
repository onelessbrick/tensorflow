FROM nvcr.io/nvidia/tensorflow:20.12-tf1-py3

USER root
RUN pip install jupyterhub
ENV PATH=/usr/local/nvm/versions/node/v15.2.1/bin:/usr/local/mpi/bin:/usr/local/nvidia/bin:/usr/local/cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/ucx/bin:/opt/tensorrt/bin
RUN /usr/local/nvm/versions/node/v15.2.1/bin/npm install -g configurable-http-proxy
ENV HOME=/workspace
CMD ["/usr/local/binjupyterhub"]
