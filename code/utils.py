#######################################
############## NEX & CIL ##############
#######################################

ssp_all = ['ssp126', 'ssp245', 'ssp370', 'ssp585']
ssp_missing370 = ['ssp126', 'ssp245', 'ssp585']
ssp_missing585 = ['ssp126', 'ssp245', 'ssp370']

nex_ssp_dict = {'ACCESS-ESM1-5': ssp_all,
                      'BCC-CSM2-MR': ssp_all,
                      'CanESM5': ssp_all,
                      'CMCC-ESM2': ssp_all,
                      'CNRM-CM6-1': ssp_all,
                      'CNRM-ESM2-1': ssp_all,
                      'EC-Earth3': ssp_all,
                      'EC-Earth3-Veg-LR': ssp_all,
                      'GFDL-ESM4': ssp_all,
                      'HadGEM3-GC31-LL': ssp_missing370,
                      'INM-CM4-8': ssp_all,
                      'INM-CM5-0': ssp_all,
                      'IPSL-CM6A-LR': ssp_all,
                      'MIROC-ES2L': ssp_all,
                      'MIROC6': ssp_all,
                      'MPI-ESM1-2-HR': ssp_all,
                      'MPI-ESM1-2-LR': ssp_all,
                      'MRI-ESM2-0': ssp_all,
                      'NESM3': ssp_missing370,
                      'NorESM2-LM': ssp_all,
                      'NorESM2-MM': ssp_all,
                      'UKESM1-0-LL': ssp_all}

cil_ssp_dict = {'ACCESS-ESM1-5': ssp_missing585,
                      'BCC-CSM2-MR': ssp_all,
                      'CanESM5': ssp_all,
                      'CMCC-ESM2': ssp_all,
                      'EC-Earth3': ssp_all,
                      'EC-Earth3-Veg-LR': ssp_all,
                      'GFDL-ESM4': ssp_all,
                      'HadGEM3-GC31-LL': ssp_missing370,
                      'INM-CM4-8': ssp_all,
                      'INM-CM5-0': ssp_all,
                      'MIROC-ES2L': ssp_all,
                      'MIROC6': ssp_all,
                      'MPI-ESM1-2-LR': ssp_all,
                      'NESM3': ssp_missing370,
                      'NorESM2-LM': ssp_all,
                      'NorESM2-MM': ssp_all,
                      'UKESM1-0-LL': ssp_all}

#######################################
############### ISIMIP3b ##############
#######################################

ssp_missing245 = ['ssp126', 'ssp370', 'ssp585']

isimip_ssp_dict = {'CanESM5': ssp_missing245,
                   'CNRM-CM6-1': ssp_missing245,
                   'CNRM-ESM2-1': ssp_missing245,
                   'EC-Earth3': ssp_missing245,
                   'GFDL-ESM4': ssp_all,
                   'IPSL-CM6A-LR': ssp_all,
                   'MIROC6': ssp_missing245,
                   'MPI-ESM1-2-HR': ssp_all,
                   'MRI-ESM2-0': ssp_all,
                   'UKESM1-0-LL': ssp_all}

########################################
############## carbonplan ##############
########################################

# GARD-SV
ssp_missing126 = ['ssp245', 'ssp370', 'ssp585']
var_all = ['tasmin', 'tasmax', 'pr']
var_missing_pr = ['tasmin', 'tasmax']

gardsv_ssp_dict = {'BCC-CSM2-MR': ssp_missing126,
                   'CanESM5': ssp_missing126,
                   'MIROC6': ssp_missing126,
                   'MPI-ESM1-2-HR': ssp_missing126}

gardsv_var_dict = {'BCC-CSM2-MR': var_missing_pr,
                   'CanESM5': var_all,
                   'MIROC6': var_missing_pr,
                   'MPI-ESM1-2-HR': var_all}

# DeepSD-BC
deepsdbc_dict = {'CanESM5': {'ssp245':var_all, 'ssp370':var_all, 'ssp585':var_all},
                     'MRI-ESM2-0': {'ssp245':var_all, 'ssp370':var_all, 'ssp585':var_missing_pr}}