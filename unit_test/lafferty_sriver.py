import xarray as xr

def lafferty_sriver(ds, var_id, weighted):
    """
    Performs the variance decomposition of Lafferty & Sriver (2023): https://doi.org/10.1038/s41612-023-00486-0

    --Inputs--
    * ds [xarray dataset]: 'raw' downscaled model outputs (i.e. without having already extracted the forced response).
                            Expected coordinates are lat, lon, ssp, model, ensemble, time. Timestep is expected to be annual. 
    * var_id [string]: name of variable on which to perform variance decomposition.
    * weighted [bool]: whether or not to perform weighting when calculating model and downscaling uncertainty.

    --Outputs--
    * U_out [xarray dataset]: percentage contribtion from each source of uncertainty.

    --NOTES--
    * Weights are calculated using ds.isel(lat=0,lon=0) so make sure this point is not all NaNs.
    * Scenario uncertainty is calculated using the Hawkins and Sutton (2009) method.
    * Only works for one variable.
    """
    # Get forced response via 4th order polynomial
    ds_forced = xr.polyval(coord=ds["time"], coeffs=ds.polyfit(dim="time", deg=4))
    ds_forced = ds_forced.rename({name: name.replace("_polyfit_coefficients", "_forced") for name in list(ds_forced.data_vars)})

    # Interannual variability = rolling 11 year variance of residuals
    ds = xr.merge([ds, ds_forced])
    ds[f'{var_id}_resid'] = ds[var_id] - ds[f'{var_id}_forced']
    U_iav = ds[f'{var_id}_resid'].rolling(time=11, center=True).var().mean(dim=['ssp','model','ensemble'])

    # HS09 scenario uncertainty: variance across multi-model means
    U_scen = ds[f'{var_id}_forced'].mean(dim=["model", "ensemble"]).var(dim="ssp")

    # Model uncertainty: variance across models, averaged over scenarios and ensembles
    U_model = ds[f'{var_id}_forced'].var(dim="model")

    if weighted:
        weights = ds.isel(lat=0, lon=0)[var_id].count(dim="model").rename("weights")
        weights = xr.where(weights == 1, 0, weights)  # remove combinations where variance was calculated over 1 entry
        U_model = U_model.weighted(weights).mean(dim=["ssp", "ensemble"])  # weighted average
    else:
        U_model = U_model.mean(dim=["ssp", "ensemble"])  # simple average

    # Downscaling uncertainy: variance across ensembles, averaged over models and scenarios
    U_ens = ds[f'{var_id}_forced'].var(dim="ensemble")

    if weighted:
        weights = ds.isel(lat=0, lon=0)[var_id].count(dim="ensemble").rename("weights")
        weights = xr.where(weights == 1, 0, weights)  # remove combinations where variance was calculated over 1 entry
        U_ens = U_ens.weighted(weights).mean(dim=["ssp", "model"])  # weighted average
    else:
        U_ens = U_ens.mean(dim=["ssp", "model"])  # simple average

    # Fractional uncertainties
    U_total = U_model + U_ens + U_scen + U_iav
    
    U_model = 100 * U_model.assign_coords(uncertainty="model") / U_total
    U_ens = 100 * U_ens.assign_coords(uncertainty="ensemble") / U_total
    U_scen = 100 * U_scen.assign_coords(uncertainty="scenario") / U_total
    U_iav = 100 * U_iav.assign_coords(uncertainty="variability") / U_total

    # Merge and return
    U_out = xr.concat([U_scen, U_model, U_ens, U_iav], dim="uncertainty")

    return U_out