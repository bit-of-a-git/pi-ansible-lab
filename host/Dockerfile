FROM arm64v8/python:3.14-rc-alpine

COPY run.sh .

RUN apk add --no-cache openssh-server && \
    mkdir -p -m 755 /var/run/sshd && \
    chmod +x run.sh

ENTRYPOINT [ "./run.sh" ]