FROM nvcr.io/nvidia/tensorflow:20.12-tf1-py3

USER root
RUN pip install jupyterhub
ENV PATH=/usr/local/nvm/versions/node/v15.2.1/bin:/usr/local/mpi/bin:/usr/local/nvidia/bin:/usr/local/cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/ucx/bin:/opt/tensorrt/bin
RUN /usr/local/nvm/versions/node/v15.2.1/bin/npm install -g configurable-http-proxy
ENV HOME=/workspace

# ENV OAUTH_CALLBACK_URL=http://jupyterhub-tensorflow.apps.ocp.onelessbrick.com/hub/oauth_callback

ENV OAUTH_CALLBACK_URL=http://oauth-openshift.apps.ocp.onelessbrick.com/oauth/token/request
ENV OAUTH_CLIENT_ID=openshift-browser-client
#ENV OAUTH_CLIENT_SECRET=db70c859ba095e67a83273ed4485853eb94a530afca6dc05665af4206b227615
EXPOSE 8000 8000
CMD ["/usr/local/bin/jupyterhub","-f","/workspace/jupyterhub_config.py"]]
