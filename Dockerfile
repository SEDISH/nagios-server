FROM quantumobject/docker-nagios

RUN apt-get update
RUN apt-get -y install gettext
COPY utils/replace-vars /replace-vars
COPY run.sh /run.sh

RUN mkdir /usr/local/nagios/etc/servers
COPY servers/ /usr/local/nagios/etc/servers/
COPY nagios.cfg /usr/local/nagios/etc/nagios.cfg
COPY added_commands.cfg /usr/local/nagios/etc/objects/added_commands.cfg

CMD ["/run.sh"]

