#!/bin/bash

# make sure executable is in path
export PATH=$PATH:/storage/home/dcl5300/work/azcopy_linux_amd64_10.16.1

OUT_PATH="/gpfs/group/kaf26/default/dcl5300/lafferty-sriver_inprep_tbh_DATA/quantiles/"

azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/era5_precip_quantiles_isimip' "${OUT_PATH}" --recursive
azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/era5_precip_quantiles_gardsv' "${OUT_PATH}" --recursive
azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/era5_precip_quantiles_nex-cil-deepsd' "${OUT_PATH}" --recursive
azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/era5_temperature_quantiles_isimip' "${OUT_PATH}" --recursive
azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/era5_temperature_quantiles_gardsv' "${OUT_PATH}" --recursive
azcopy copy 'https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/era5_temperature_quantiles_nex-cil-deepsd' "${OUT_PATH}" --recursive