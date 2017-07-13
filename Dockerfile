FROM quay.io/vektorcloud/base:3.6

ENV VERSION 0.8.5

RUN cd /tmp \
  && wget https://releases.hashicorp.com/consul/$VERSION/consul_"$VERSION"_linux_amd64.zip \
  && unzip consul* \
  && mv consul /usr/bin \
  && rm -rv /tmp/*

ENTRYPOINT ["/usr/bin/consul"]
