FROM arm64v8/debian:stable-slim

COPY run.sh .

RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests openssh-server python3 && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p -m 755 /var/run/sshd && \
    chmod +x run.sh

ENTRYPOINT [ "./run.sh" ]