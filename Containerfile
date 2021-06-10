FROM registry.access.redhat.com/ubi8/ubi-minimal:latest

RUN microdnf -y install httpd-tools

USER daemon:daemon

ENTRYPOINT ["/usr/bin/ab"]

CMD ["--help"]
