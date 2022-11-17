#!/bin/bash

OUT_PATH="/home/jovyan/PlanetaryComputerExamples/DownscalingComparison/lafferty-sriver_inprep_tbd/data/quantiles/"

wget -P $OUT_PATH https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_precip_quantiles.nc
wget -P $OUT_PATH https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_precip_quantiles_isimip.nc
wget -P $OUT_PATH https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_precip_quantiles_gardsv.nc
wget -P $OUT_PATH https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_precip_quantiles_nex-cil-deepsd.nc

wget -P $OUT_PATH https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_temperature_quantiles.nc
wget -P $OUT_PATH https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_temperature_quantiles_isimip.nc
wget -P $OUT_PATH https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_temperature_quantiles_gardsv.nc
wget -P $OUT_PATH https://mpctransfer.blob.core.windows.net/mpctransfer/quantiles/gmfd_temperature_quantiles_nex-cil-deepsd.nc