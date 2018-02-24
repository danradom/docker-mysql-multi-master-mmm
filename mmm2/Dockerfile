FROM centos

VOLUME /var/lib/mysql
EXPOSE 3306

RUN yum -y update
RUN yum -y install epel-release http://www.percona.com/downloads/percona-release/redhat/0.1-4/percona-release-0.1-4.noarch.rpm
RUN yum -y install yum install Percona-Server-server-57 mysql-mmm-agent mysql-mmm-monitor mysql-mmm-tools

COPY install/bashrc /root/.bashrc
COPY install/my.cnf /etc/my.cnf
COPY install/mmm/ /root/mmm
COPY install/mmm-init.sh /var/lib/mysql-init/
COPY install/mysql-repl.sh /var/lib/mysql-init/
COPY install/mysql-users.sh /var/lib/mysql-init/
COPY install/mysql-init.sh /var/lib/mysql-init/
COPY install/mysql-post.sh /var/lib/mysql-init/

CMD ["/var/lib/mysql-init/mysql-init.sh"]
