FROM gerritforge/gerrit-ubuntu15.04:2.13.9

USER gerrit

ADD gerrit.config /var/gerrit/etc/

ADD secure.config /var/gerrit/etc/

USER root

RUN apt-get install -y net-tools netcat inetutils-ping

ADD start.sh /bin/

ADD wait-for-it.sh /bin/

CMD /bin/start.sh
