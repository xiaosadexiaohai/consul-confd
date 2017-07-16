FROM rancher/confd-base

ADD ./conf.d /etc/confd/conf.d
ADD ./templates /etc/confd/templates

ENTRYPOINT ["/usr/bin/confd"]
CMD ["--backend", "rancher", "--prefix", "/2016-07-29", "--log-level", "debug"]
