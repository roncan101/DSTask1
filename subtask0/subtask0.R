#importing data set
a<-read.csv('HW2023.csv')
install.packages('tidyverse')
require('tidyverse')

#making NA entries to 0 and 
a<-a %>% mutate(rain = replace_na(rain,0))
view(a)
a<-a %>% mutate(rain_t=lead(rain))
a<- a %>% mutate(`rain_t?` = if_else(rain_t > 0, 'Y', 'N'))
view(a)

#creating the z-score ZHW2023
z_score <- function(x) {(x-mean(x, na.rm=TRUE)) / sd(x, na.rm =TRUE)}
ZHW2023<-a %>% mutate(across(c('temp_max', 'humidity', 'visibility', 'cloudiness', 'wind_speed', 'rain'), z_score))
view(ZHW2023)
