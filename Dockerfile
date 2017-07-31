FROM quantumobject/docker-nagios

COPY run.sh /run.sh

CMD ["/run.sh"]

