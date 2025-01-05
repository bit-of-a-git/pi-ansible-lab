FROM arm64v8/debian:stable-slim

WORKDIR /ansible

COPY run.sh /usr/local/bin/

RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests ansible-core && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +x /usr/local/bin/run.sh

ENTRYPOINT [ "/usr/local/bin/run.sh" ]

CMD ["tail", "-f", "/dev/null"]