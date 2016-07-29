#FROM datadrivenhpc/slurmbase
FROM slurmbase:latest

ADD etc/supervisord.d/slurmctld.conf /etc/supervisor/conf.d/slurmctld.conf
