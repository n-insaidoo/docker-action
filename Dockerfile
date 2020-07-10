FROM meterian/cli-canary:latest

WORKDIR /root
COPY entrypoint.sh /root
ENTRYPOINT [ "entrypoint.sh" ]
