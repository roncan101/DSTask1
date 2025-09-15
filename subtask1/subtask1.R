#Subtask1
selected_attributes <- a %>% select(temp_max, humidity, visibility, wind_speed, rain)
covariance_matrix<- cov(selected_attributes)
correlation_matrix<-cor(selected_attributes)
view(covariance_matrix)
view(correlation_matrix)
