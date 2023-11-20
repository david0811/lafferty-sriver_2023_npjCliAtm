#!/bin/bash

# make sure executable is in path
export PATH=$PATH:/storage/home/dcl5300/work/azcopy_linux_amd64_10.16.1

# Transfer ERA5 quantiles from azure
OUT_PATH="/gpfs/group/kaf26/default/dcl5300/lafferty-sriver_inprep_tbh_DATA/obs_data/quantiles/" # where to store ERA5 quantiles

azcopy copy "https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/era5_precip_quantiles_isimip" "${OUT_PATH}" --recursive
azcopy copy "https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/era5_precip_quantiles_gardsv" "${OUT_PATH}" --recursive
azcopy copy "https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/era5_precip_quantiles_nex-cil-deepsd" "${OUT_PATH}" --recursive
azcopy copy "https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/era5_temperature_quantiles_isimip" "${OUT_PATH}" --recursive
azcopy copy "https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/era5_temperature_quantiles_gardsv" "${OUT_PATH}" --recursive
azcopy copy "https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/era5_temperature_quantiles_nex-cil-deepsd" "${OUT_PATH}" --recursive

# Transfer GMFD quantiles to azure (will not work unless authenticated)
OUT_PATH="/gpfs/group/kaf26/default/dcl5300/lafferty-sriver_inprep_tbh_DATA/obs_data/quantiles/" # where GMFD quantiles are stored

azcopy copy "${OUT_PATH}/gmfd_precip_quantiles_isimip.nc" "https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_precip_quantiles_isimip.nc" --recursive
azcopy copy "${OUT_PATH}/gmfd_precip_quantiles_gardsv.nc" "https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_precip_quantiles_gardsv.nc" --recursive
azcopy copy "${OUT_PATH}/gmfd_precip_quantiles_nex-cil-deepsd.nc" "https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_precip_quantiles_nex-cil-deepsd.nc" --recursive
azcopy copy "${OUT_PATH}/gmfd_temperature_quantiles_isimip.nc" "https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_temperature_quantiles_isimip.nc" --recursive
azcopy copy "${OUT_PATH}/gmfd_temperature_quantiles_gardsv.nc" "https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_temperature_quantiles_gardsv.nc" --recursive
azcopy copy "${OUT_PATH}/gmfd_temperature_quantiles_nex-cil-deepsd.nc" "https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_temperature_quantiles_nex-cil-deepsd.nc" --recursive

# Transfer ERA5 annual statistics from azure
OUT_PATH="/gpfs/group/kaf26/default/dcl5300/lafferty-sriver_inprep_tbh_DATA/obs_data/annual/era5/" # where to store ERA5 annual statistics

azcopy copy "https://mpctransfer.blob.core.windows.net/mpctransfer/era5/annual/" "${OUT_PATH}" --recursive