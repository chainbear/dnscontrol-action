FROM ghcr.io/stackexchange/dnscontrol:4.15.6

LABEL "com.github.actions.name"="DNSControl"
LABEL "com.github.actions.description"="Deploy your DNS configuration to multiple providers."
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache bash

RUN ["dnscontrol", "version"]

COPY README.md entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
