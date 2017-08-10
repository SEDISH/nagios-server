#!/bin/sh

htpasswd -b /usr/local/nagios/etc/htpasswd.users nagiosadmin ${NAGIOS_PASSWORD}

for file in /usr/local/nagios/etc/servers/*.cfg; do /replace-vars $file; done

/sbin/my_init
