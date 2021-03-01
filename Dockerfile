FROM nvcr.io/nvidia/tensorflow:20.12-tf1-py3

USER root

ENV PATH=/usr/local/nvm/versions/node/v15.2.1/bin:/usr/local/mpi/bin:/usr/local/nvidia/bin:/usr/local/cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/ucx/bin:/opt/tensorrt/bin
ENV HOME=/workspace

RUN /usr/local/nvm/versions/node/v15.2.1/bin/npm install -g configurable-http-proxy

EXPOSE 8888 8888

CMD ["/usr/local/bin/jupyter-lab"]
