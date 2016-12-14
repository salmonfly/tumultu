library(boot)
library(dplyr)
library(ggplot2)
 
#Read in data spreadsheet
df <- read.csv("C:/PYTHON/BVC_FWM_2016.csv", header = TRUE)
print(df)
 #Strip out rows where quadrats contained no mussels
print(df <- df%>% filter(!(LNG==0 & COND==0)))
  
#Create new df where LNG=0 has been removed
df_NO_zero <- df %>% filter(!(LNG==0 & COND==0))

df_NO_zero <- as.data.frame(df_NO_zero)

print(df_NO_zero)
 
lgth <- df_NO_zero["LNG"]

print(lgth)

Avg_len <- round((sum(lgth)/count(lgth)), digits = 1)
print(paste0("Average Mussel Length ="), Avg_len)