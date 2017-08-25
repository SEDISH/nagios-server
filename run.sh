#!/bin/sh

htpasswd -b /usr/local/nagios/etc/htpasswd.users nagiosadmin ${NAGIOS_PASSWORD}

for file in /usr/local/nagios/etc/servers/*.cfg; do /replace-vars $file; done
/replace-vars /usr/local/nagios/etc/objects/contacts.cfg

/etc/init.d/postfix restart

/sbin/my_init
