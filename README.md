oc new-app --strategy=docker -n tensorflow --name=jupyterlab https://github.com/onelessbrick/tensorflow.git

oc expose service/jupyterlab

oc logs -f buildconfig/jupyterlab
