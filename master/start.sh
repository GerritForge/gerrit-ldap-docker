#!/bin/bash -ex

wait-for-it.sh -t 30 postgres:5432 -- echo "Postgres is up"
wait-for-it.sh -t 30 ldap:389 -- echo "LDAP is up"
sudo -u gerrit rm -Rf /var/gerrit/git/*
sudo -u gerrit java -jar /var/gerrit/bin/gerrit.war init -d /var/gerrit --batch 

/etc/init.d/gerrit start
tail -f /var/gerrit/logs/error_log

