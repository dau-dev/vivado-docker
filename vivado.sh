#!/bin/bash
docker run -v `pwd`:/home/user --workdir /home/user --entrypoint /opt/Xilinx/Vivado/2023.2/bin/vivado timkpaine/vivtest "$@"
