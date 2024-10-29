FROM ubuntu:22.04
WORKDIR /opt
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
RUN apt-get update && apt-get install -y less libncurses5 libtinfo5 libx11-6 locales make rsync vim xvfb && locale-gen en_US.UTF-8
RUN mkdir -p /opt/Xilinx/Vivado/2023.2 && \
    rsync -ah /mnt/Vivado/ /opt/Xilinx/Vivado/2023.2 && \
    ls -al /opt/Xilinx/Vivado/2023.2/ && \
    printf 'source /opt/Xilinx/Vivado/2023.2/settings64.sh' >> /etc/profile
RUN bash -lc "source /opt/Xilinx/Vivado/2023.2/settings64.sh && vivado -version"

