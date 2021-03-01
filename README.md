oc new-app --strategy=docker -n tensorflow --name=jupyterhub https://github.com/onelessbrick/tensorflow.git

oc expose service/jupyterhub

oc logs -f buildconfig/jupyterhub
