#!/bin/bash

# make sure executable is in path
export PATH=$PATH:/storage/home/dcl5300/work/azcopy_linux_amd64_10.16.1

OUT_PATH="/gpfs/group/kaf26/default/dcl5300/lafferty-sriver_inprep_tbh_DATA/metrics"

# CIL-GDPCIR 
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/cil-gdpcir/avg/' "${OUT_PATH}/cil-gdpcir/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/cil-gdpcir/max/' "${OUT_PATH}/cil-gdpcir/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/cil-gdpcir/wet/' "${OUT_PATH}/cil-gdpcir/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/cil-gdpcir/hot/' "${OUT_PATH}/cil-gdpcir/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/cil-gdpcir/dry/' "${OUT_PATH}/cil-gdpcir/" --recursive
azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/cil-gdpcir/max5d/' "${OUT_PATH}/cil-gdpcir/" --recursive

## carbonplan
# GARD-SV
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/GARD-SV/avg/' "${OUT_PATH}/carbonplan/native_grid/GARD-SV/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/GARD-SV/max/' "${OUT_PATH}/carbonplan/native_grid/GARD-SV/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/GARD-SV/wet/' "${OUT_PATH}/carbonplan/native_grid/GARD-SV/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/GARD-SV/hot/' "${OUT_PATH}/carbonplan/native_grid/GARD-SV/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/GARD-SV/dry/' "${OUT_PATH}/carbonplan/native_grid/GARD-SV/" --recursive
azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/GARD-SV/max5d/' "${OUT_PATH}/carbonplan/native_grid/GARD-SV/" --recursive

# DeepSD-BS
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/DeepSD-BC/avg/' "${OUT_PATH}/carbonplan/native_grid/DeepSD-BC/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/DeepSD-BC/max/' "${OUT_PATH}/carbonplan/native_grid/DeepSD-BC/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/DeepSD-BC/dry/' "${OUT_PATH}/carbonplan/native_grid/DeepSD-BC/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/DeepSD-BC/hot/' "${OUT_PATH}/carbonplan/native_grid/DeepSD-BC/" --recursive
azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/DeepSD-BC/wet/' "${OUT_PATH}/carbonplan/native_grid/DeepSD-BC/" --recursive
azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/DeepSD-BC/max5d/' "${OUT_PATH}/carbonplan/native_grid/DeepSD-BC/" --recursive
