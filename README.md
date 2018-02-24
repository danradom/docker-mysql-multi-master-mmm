# docker-mysql-multi-master-mmm
MySQL Multi-Master MMM containers

- make sure the network is running - start_network.sh


- run build.sh in mmm1 and mmm2 directories

- start mmm1 container
- start mmm2 container


- connect to mmm1 container
- connect to mmm2 container


- wait until mysql initializes itself and performs some restarts.  you will know it is ready once the replicator and mmm users are present in both mmm1 and mmm2 mysql database


- run /var/lib/mysql-init/mysql-repl.sh on mmm1
- run /var/lib/mysql-init/mysql-repl.sh on mmm2


- run /var/lib/mysql-init/mmm-init.sh on mmm1
- run /var/lib/mysql-init/mmm-init.sh on mmm2
