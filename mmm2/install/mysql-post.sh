#!/bin/sh
#

/var/lib/mysql-init/mysql-repl.sh
sleep 5
/var/lib/mysql-init/mmm-init.sh
