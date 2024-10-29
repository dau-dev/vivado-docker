#!/bin/bash
pushd ../2023.2

rm -rf doc
rm -rf examples
rm -rf fonts
rm -rf ids_lite

rm -rf data/autoPredict/
rm -rf data/deca/
rm -rf data/embeddedsw/
rm -rf data/emulation/
rm -rf data/secureip
rm -rf data/sigasi/
rm -rf data/simmodels/vcs
rm -rf data/simmodels/questa
rm -rf data/simmodels/riviera
rm -rf data/simmodels/osci
rm -rf data/simmodels/xcelium
rm -rf data/simmodels
rm -rf data/parts/xilinx/versal
rm -rf data/parts/xilinx/virtexuplus
rm -rf data/parts/xilinx/virtex4
rm -rf data/parts/xilinx/virtex5
rm -rf data/parts/xilinx/virtex6
rm -rf data/parts/xilinx/templates
rm -rf data/parts/xilinx/spartan3
rm -rf data/parts/xilinx/spartan3a
rm -rf data/parts/xilinx/spartan3adsp
rm -rf data/parts/xilinx/spartan3e
rm -rf data/parts/xilinx/spartan6
rm -rf data/xicom
rm -rf data/xsim/verilog/secureip
rm -rf data/xsim

rm -rf lib/classes
rm -rf lib/lnx64.o/Ubuntu/18
rm -rf lib/lnx64.o/Ubuntu/20
rm -rf lib/lnx64.o/SuSE
rm -rf lib/lnx64.o/Rhel
rm -rf lib/lnx64.o/matlab
rm -rf lib/sigasi

rm -rf lnx64

rm -rf tps/boost_1_72_0
rm -rf tps/llvm
rm -rf tps/lnx64/binutils-*
rm -rf tps/lnx64/clangd-8.0.0/
rm -rf tps/lnx64/gcc-*
rm -rf tps/lnx64/git-*
rm -rf tps/lnx64/java-cef-95.0.4638.69/
rm -rf tps/lnx64/javafx-sdk-17.0.1/
rm -rf tps/lnx64/jre17.0.7_7/
rm -rf tps/lnx64/python-3.8.3/
rm -rf tps/lnx64/target_aie_ml/
rm -rf tps/ui-images

# TODO restore
rm -rf data/parts/xilinx/common/congestion
rm -rf data/parts/xilinx/common/congestion/xcvu*
rm -rf data/parts/xilinx/common/congestion/xcvn*
rm -rf data/parts/xilinx/common/congestion/vu*
rm -rf data/parts/xilinx/common/congestion/v10*

# rm -rf data/parts/xilinx/kintex7
# rm -rf data/parts/xilinx/virtex7
rm -rf data/parts/xilinx/zynq
# rm -rf data/parts/xilinx/artix7/devint/aartix7
# rm -rf data/parts/xilinx/artix7/devint/artix7l

find . -name "*.log" | xargs rm -rf
find . -name ".gitignore" | xargs rm
rdfind -makesymlinks true .

