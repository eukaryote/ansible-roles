#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# 'mynetworks_style = host' is equivalent to only trusting
# the local host, so after setting that we remove 'mynetworks'
postconf -e 'mynetworks_style = host'
postconf -X 'mynetworks'

postconf -e 'myorigin = /etc/mailname'

postconf -e 'inet_interfaces = {{postfix_inet_interfaces}}'

postconf -e 'smtpd_banner = $myhostname'

postconf -e 'mydomain = {{postfix_mailname}}'

postconf -e 'myhostname = {{postfix_mailname}}'

postconf -e 'mydestination = localhost, localhost.localdomain, {{postfix_mailname}}'

postconf -e 'inet_protocols = {{postfix_protocols}}'
