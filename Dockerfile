FROM gromr1/slurmbase
MAINTAINER Ruslan Gainanov <gromrx1@gmail.com>

ADD scripts/start.sh /root/start.sh
RUN chmod +x /root/start.sh

ADD etc/supervisord.d/slurmctld.conf /etc/supervisor/conf.d/slurmctld.conf

CMD ["/bin/bash","/root/start.sh"]
