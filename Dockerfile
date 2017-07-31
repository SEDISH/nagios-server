FROM quantumobject/docker-nagios

COPY set-password.sh /set-password.sh
RUN /set-password.sh

CMD ["/sbin/my_init"]

