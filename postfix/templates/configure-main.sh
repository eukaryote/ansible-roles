#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# 'mynetworks_style = host' is equivalent to only trusthing
# the local host, so after setting that we can remove 'mynetworks'
postconf -e 'mynetworks_style = host'
postconf -X 'mynetworks'

postconf -e 'myorigin = /etc/mailname'

# only used for outgoing mail currently, so only listen on the
# localhost interface
postconf -e "inet_interfaces = loopback-only"

postconf -e 'smtpd_banner = $myhostname'

postconf -e 'mydomain = {{postfix_mailname}}'

postconf -e 'myhostname = {{postfix_mailname}}'

postconf -e 'mydestination = localhost, localhost.localdomain, {{postfix_mailname}}'
