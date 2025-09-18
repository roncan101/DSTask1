#Subtask 6 

load("Task1Stuff.RData")
HW2023 <- a

#2d Density plot
png("subtask6_cloudiness_vs_windspeed_density.png", width=800, height=600)
smoothScatter(HW2023$cloudiness, HW2023$wind_speed,
              main = "Density Plot: Cloudiness vs Wind Speed",
              xlab = "Cloudiness (%)",
              ylab = "Wind Speed (mph)",
              bandwidth = c(1.5, 0.4),
              colramp = colorRampPalette(c("white", "lightblue", "blue", "darkblue")))

grid()

dev.off()
