#!/bin/sh

htpasswd -b /usr/local/nagios/etc/htpasswd.users nagiosadmin ${NAGIOS_PASSWORD}

/sbin/my_init
