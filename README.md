_your zenodo badge here_

# lafferty-sriver_inprep_tbg

**Downscaling and bias-correction contribute considerable uncertainty to near-term projections of climate extremes** (tentative)

David Lafferty<sup>1\*</sup>, Ryan Sriver<sup>1</sup>

<sup>1</sup> University of Illinois

\* corresponding author: davidcl2@illinois.edu

## Abstract

_Paper abstract goes here._

## Journal reference

_TBD_

## How to reproduce the experiment

### Preliminaries 
1. The [CIL-GDPCIR](https://github.com/ClimateImpactLab/downscaleCMIP6) and [carbonplan](https://carbonplan.org/research/cmip6-downscaling-explainer) ensembles are initially analyzed on [Microsoft Planetary Computer](https://planetarycomputer.microsoft.com/) (MPC) so you will need to create an account there. Additionally, intermediate results from MPC are transferred to [Azure Blob Storage](https://azure.microsoft.com/en-us/products/storage/blobs/) where they can be accessed publicly via [azcopy](https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10). To install `azcopy` just download the relevant executable file from [this link](https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10) and add it to your path.
2. The [NEX-GDDP](https://www.nccs.nasa.gov/services/data-collections/land-based-products/nex-gddp-cmip6) and [ISIMIP](https://www.isimip.org/gettingstarted/input-data-bias-adjustment/) ensembles were downloaded locally (to a high-performance computing cluster). Details on how to download each ensemble can be found on their respective websites.

### Instructions

x. Transfering from Azure Blob Storage to your local storage: open the bash script `02_transfer_from_azure.sh` and edit the variable `OUT_PATH` to define where the files should be stored. Then run the bash script.

## Dependencies

- **Python**: include `environment.yml` file(s)
