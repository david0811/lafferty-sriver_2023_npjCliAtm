library(car)

df <- read.csv('Projects/UIUC/DownscalingComparison/figs/lagos_avg_tas_forced_deg2.csv')

# Create results data frame
colnames <- c('year',
              'ssp', 'model', 'ensemble',
              'ssp:model', 'ssp:ensemble', 'model:ensemble',
              'resid')

df_out <- data.frame(matrix(ncol = 8, nrow = 0))
colnames(df_out) <- colnames

for (yr in unique(df$time)) {
  # Subset year
  df_yr <- df[df$time == yr,]
  
  # Unbalanced ANOVA model, 2-way interactions, type II
  linmod <- lm(tas ~ ssp + model + ensemble + 
                 ssp:model + ssp:ensemble + model:ensemble,
               data=df_yr)
  anova <- Anova(linmod, type=2)
  
  # Append results
  df_tmp <- t(data.frame(append(yr, anova$`Sum Sq`)))
  colnames(df_tmp) <- colnames
  rownames(df_tmp) <- NULL
  df_out <- rbind(df_out, df_tmp)
}
