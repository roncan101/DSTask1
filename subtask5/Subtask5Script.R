# Subtask 5 

load("Task1Stuff.RData")
HW2023 <- a

#indices
rain_yes <- HW2023$'rain_t?' == "Y"
rain_no <- HW2023$'rain_t?' == "N"


#Supervised Plot 1 - Humidity vs Wind Speed
png("subtask5_humidity_vs_wind_scatter_plot.png", width=800, height=600)
plot(HW2023$humidity, HW2023$wind_speed,
     main = "Scatter Plot: Humidity vs Wind Speed by Rain Tomorrow",
     xlab = "Humidity (%)",
     ylab = "Wind Speed (mph)",
     pch = 19, col = "white")
points(HW2023$humidity[rain_no], HW2023$wind_speed[rain_no],
       pch = 19, col = "green")
points(HW2023$humidity[rain_yes], HW2023$wind_speed[rain_yes],
       pch = 19, col = "red")
legend("topright", legend = c("No Rain Tomorrow", "Rain Tomorrow"),
       col = c("green", "red"), pch = 19)
dev.off()


#Supervised Plot 2 - Max temp vs Rain
png("subtask5_tempmax_vs_rain_scatter_plot.png", width=800, height=600)
plot(HW2023$temp_max, HW2023$rain,
     main = "Scatter Plot: Max Temperature vs Rain by Rain Tomorrow",
     xlab = "Max Temperature (°F)",
     ylab = "Rain (inches)",
     pch = 19, col = "white")
points(HW2023$temp_max[rain_no], HW2023$rain[rain_no],
       pch = 19, col = "green")
points(HW2023$temp_max[rain_yes], HW2023$rain[rain_yes],
       pch = 19, col = "red")
legend("topright", legend = c("No Rain Tomorrow", "Rain Tomorrow"),
       col = c("green", "red"), pch = 19)
dev.off()