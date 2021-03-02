oc new-app --strategy=docker -n tensorflow --name=jupyterlab https://github.com/onelessbrick/tensorflow.git

oc expose service/jupyterlab

oc adm policy add-scc-to-user anyuid -z tensorflow

oc set serviceaccount deployment jupyterlab tensorflow

oc logs -f buildconfig/jupyterlab

from tensorflow.python.client import device_lib
print(device_lib.list_local_devices())
