oc new-app --strategy=docker -n tensorflow --name=jupyterhub https://github.com/onelessbrick/tensorflow.git

--> Found container image c8515d0 (2 months old) from nvcr.io for "nvcr.io/nvidia/tensorflow:20.12-tf1-py3"

    * An image stream tag will be created as "tensorflow:20.12-tf1-py3" that will track the source image
    * A Docker build using source code from https://github.com/onelessbrick/tensorflow.git will be created
      * The resulting image will be pushed to image stream tag "jupyterhub:latest"
      * Every time "tensorflow:20.12-tf1-py3" changes a new build will be triggered

--> Creating resources ...
    imagestream.image.openshift.io "tensorflow" created
    imagestream.image.openshift.io "jupyterhub" created
    buildconfig.build.openshift.io "jupyterhub" created
    deployment.apps "jupyterhub" created
    service "jupyterhub" created
--> Success
    Build scheduled, use 'oc logs -f buildconfig/jupyterhub' to track its progress.
    Application is not exposed. You can expose services to the outside world by executing one or more of the commands below:
     'oc expose service/jupyterhub' 
    Run 'oc status' to view your app.
