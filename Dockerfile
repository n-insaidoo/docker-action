FROM meterian/cli-canary:latest

WORKDIR /root
COPY entrypoint.sh /root
ENTRYPOINT [ "/root/entrypoint.sh" ]
