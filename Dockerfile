FROM nvcr.io/nvidia/tensorflow:20.10-tf2-py3
  
COPY limits.conf /etc/security

# ENTRYPOINT [ \
# "/bin/bash", \
# "--shm-size=1g", \
# "--ulimit memlock=-1", \
# "--ulimit stack=67108864 \
# "]