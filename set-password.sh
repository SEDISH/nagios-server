#!/bin/sh

htpasswd -b -c /usr/local/nagios/etc/htpasswd.users nagiosadmin ${NAGIOS_PASSWORD}
