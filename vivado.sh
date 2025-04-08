#!/bin/bash
docker run -v `pwd`:/home/user --workdir /home/user --entrypoint /opt/Xilinx/Vivado/2023.2/bin/vivado -e LD_PRELOAD=/lib/x86_64-linux-gnu/libudev.so.1 timkpaine/vivtest "$@"
