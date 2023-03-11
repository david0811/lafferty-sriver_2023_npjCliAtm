library(car)

###############################
# Set paths
# UPDATE THIS FOR REPRODUCTION
###############################
data_path <- '/storage/home/dcl5300/work/lafferty-sriver_inprep_tbd/data/' # location of csv files containing timeseries of raw and forced response for each city
out_path = '/storage/home/dcl5300/work/lafferty-sriver_inprep_tbd/data/anova_results/' # where to store ANOVA results

# Calculate ANOVA UC on forced response
calculate_anova <- function(city, metric, var_id, deg){
  save_path <- paste(out_path, paste(city, metric, var_id, 'forced_deg', sep='_'), deg, '.csv', sep='')
  if (!file.exists(save_path)) {
    read_path <- paste(data_path, paste(city, metric, var_id, 'forced_deg', sep='_'), deg, '.csv', sep='')
    df <- read.csv(read_path)
  
    # Create results data frame
    colnames <- c('year',
                'ssp', 'model', 'ensemble',
                'ssp_model', 'ssp_ensemble', 'model_ensemble',
                'resid')
  
    df_out <- data.frame(matrix(ncol = 8, nrow = 0))
    colnames(df_out) <- colnames
  
    for (yr in unique(df$time)) {
      # Subset year
      df_yr <- df[df$time == yr,]
    
      # Unbalanced ANOVA model, 2-way interactions, type II
      formula <- as.formula(paste(var_id, '~ ssp + model + ensemble + 
                   ssp:model + ssp:ensemble + model:ensemble', sep=''))
      linmod <- lm(formula,
                  data=df_yr)
      anova <- Anova(linmod, type=2)
    
      # Append results
      df_tmp <- t(data.frame(append(yr, anova$`Sum Sq`)))
      colnames(df_tmp) <- colnames
      rownames(df_tmp) <- NULL
    df_out <- rbind(df_out, df_tmp)
    }
    # Store
    write.csv(df_out,
              save_path,
              row.names = FALSE)
  }
}

# Loop through select cities
for (city in c('lagos', 'delhi', 'houston', 'mexicocity', 'nyc', 'seattle', 'cairo', 'denver')) {
  for (deg in c('2', '4')) {
    # Avg
    calculate_anova(city, 'avg', 'tas', deg)
    calculate_anova(city, 'avg', 'pr', deg)
    
    # Max
    calculate_anova(city, 'max', 'pr', deg)
    calculate_anova(city, 'max', 'tasmax', deg)
    
    # Dry
    calculate_anova(city, 'dry', 'count_lt_1', deg)
    
    # Hot
    calculate_anova(city, 'hot', 'tasmax_q99gmfd_count', deg)
    
    # Hot-Dry
    calculate_anova(city, 'hotdry', 'hotdry_q99gmfd_count', deg)
    
    # Wet
    calculate_anova(city, 'wet', 'pr_q99gmfd_count', deg)
  }
}
