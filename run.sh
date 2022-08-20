#!/bin/sh
docker run --name juliadev -it \
	-v $(pwd):/h \
	-h juliadev \
	siuyin/julia bash
