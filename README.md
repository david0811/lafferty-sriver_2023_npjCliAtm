_your zenodo badge here_

# lafferty-sriver_2023_tbd

**Downscaling and bias-correction contribute considerable uncertainty to local climate projections in CMIP6**

David Lafferty<sup>1\*</sup>, Ryan Sriver<sup>1</sup>

<sup>1</sup> Department of Atmospheric Sciences, University of Illinois Urbana-Champaign

\* corresponding author: davidcl2@illinois.edu

## Abstract

Efforts to diagnose the risks of a changing climate often rely on downscaled and bias-corrected climate information, making it important to understand the uncertainties and potential biases of this approach. Here, we perform a variance decomposition to partition uncertainty in global climate projections and quantify the relative importance of downscaling and bias-correction. We analyze simple climate metrics such as annual temperature and precipitation averages, as well as several indices of climate extremes. We find that downscaling and bias-correction often contribute substantial uncertainty to local decision-relevant climate outcomes, though our results are strongly heterogeneous across space, time, and climate metrics. Our results can provide guidance to impact modelers and decision-makers regarding the uncertainties associated with downscaling and bias-correction when performing local-scale analyses, as neglecting to account for these uncertainties may risk overconfidence relative to the full range of possible climate futures. 

## Journal reference

_TBD_

## How to reproduce the experiment

### Preliminaries 
1. The [CIL-GDPCIR](https://github.com/ClimateImpactLab/downscaleCMIP6) and [carbonplan](https://carbonplan.org/research/cmip6-downscaling-explainer) ensembles are initially analyzed on [Microsoft Planetary Computer](https://planetarycomputer.microsoft.com/) (MPC) so you will need to create an account there. Additionally, intermediate results from MPC are transferred to [Azure Blob Storage](https://azure.microsoft.com/en-us/products/storage/blobs/) where they can be accessed publicly via [azcopy](https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10). To install `azcopy` download the relevant executable file from [this link](https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10) and add it to your path.
2. The [NEX-GDDP](https://www.nccs.nasa.gov/services/data-collections/land-based-products/nex-gddp-cmip6) and [ISIMIP](https://www.isimip.org/gettingstarted/input-data-bias-adjustment/) ensembles were downloaded locally (to a high-performance computing cluster). Details on how to download each ensemble can be found on their respective websites. 

### Instructions

To reproduce the entire anaylsis, sequentially execute all notebooks/scripts in the `code` directory. The table below provides some additional information.

| Script Number | Purpose | Run on MPC? |
| --- | --- | --- |
| 01a | Calculates historical temperature and precipitation quantiles from ERA5 dataset | x |
| 01b | Calculates historical temperature and precipitation quantiles from GMFD dataset |  |
| 01c | Transfers ERA5 historical quantiles local storage, transfers GMFD historical quantiles to Azure |  |
| 01d | Transfers GMFD historical quantiles to MPC | x |
| 02a | Calculates suite of impact metrics for CIL-GDPCIR ensemble | x |
| 02b | Calculates suite of impact metrics for NEX-GDDP ensemble |  |
| 02c | Calculates suite of impact metrics for ISIMIP ensemble |  |
| 02d | Calculates suite of impact metrics for carbonplan ensemble | x |
| 03 | Transfers output data from `02a` and `02d` to local storage |  |
| 04 | Conservatively regrids all output data from `02` to a common 0.25 degree grid |  |
| 05 | Performs the uncertainty analysis |  |
| 06 | Produces all main text figures |  |
| 07a | Runs ANOVA analysis for select cities to infer interaction effects |  |
| 07b | Produces all supplementary figures |  |

## How to reproduce the figures

Coming soon

## Dependencies

- **Python**: `environment.yml`
- **R**: `Rsession.log`
