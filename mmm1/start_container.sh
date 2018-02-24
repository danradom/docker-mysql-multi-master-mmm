#!/bin/sh
#

docker run --rm -it -d \
	--net mysql-mmm \
	--ip 172.18.0.100 \
	--cap-add=NET_ADMIN \
	--hostname mmm1 \
	--name mmm1 \
	mmm1
