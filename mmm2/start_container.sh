#!/bin/sh
#

docker run --rm -it -d \
	--net mysql-mmm \
	--ip 172.18.0.101 \
	--cap-add=NET_ADMIN \
	--hostname mmm2 \
	--name mmm2 \
	mmm2
