#!/bin/bash

# make sure executable is in path
export PATH=$PATH:/storage/home/dcl5300/work/azcopy_linux_amd64_10.16.1

OUT_PATH="/gpfs/group/kaf26/default/dcl5300/lafferty-sriver_inprep_tbh_DATA/metrics"

# CIL-GDPCIR 
azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/cil-gdpcir/' "${OUT_PATH}/cil-gdpcir_zarr/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/cil-gdpcir/annual_maxs/' "${OUT_PATH}/cil-gdpcir/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/cil-gdpcir/annual_maxs/' "${OUT_PATH}/cil-gdpcir/" --recursive

# carbonplan
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/GARD-SV/annual_avgs/' "${OUT_PATH}/carbonplan/native_grid/GARD-SV/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/GARD-SV/annual_maxs/' "${OUT_PATH}/carbonplan/native_grid/GARD-SV/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/DeepSD-BC/annual_avgs/' "${OUT_PATH}/carbonplan/native_grid/DeepSD-BC/" --recursive
# azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/carbonplan/DeepSD-BC/annual_maxs/' "${OUT_PATH}/carbonplan/native_grid/DeepSD-BC/" --recursive