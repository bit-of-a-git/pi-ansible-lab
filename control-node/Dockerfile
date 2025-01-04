FROM arm64v8/debian:stable-slim

WORKDIR /ansible

ENV ANSIBLE_HOST_KEY_CHECKING=False 

RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests ansible-core && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /shared-files && \
    ssh-keygen -t rsa -b 4096 -f /shared-files/master_key -N ""

CMD ["tail", "-f", "/dev/null"]