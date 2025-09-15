# Save Humidity vs Rain
png("subtask2_humidity_vs_rain_scatter_plot.png", width=800, height=600)
plot(ZHW2023$humidity, ZHW2023$rain,
     main = "Scatter Plot: Humidity vs Rain",
     xlab = "Humidity (%)",
     ylab = "Rain (inches)",
     pch = 19, col = "blue")
dev.off()   # closes the first file

# Save Visibility vs Wind Speed
png("subtask2_visibility_vs_wind_scatter_plot.png", width=800, height=600)
plot(ZHW2023$visibility, ZHW2023$wind_speed,
     main = "Scatter Plot: Visibility vs Wind Speed",
     xlab = "Visibility (meters)",
     ylab = "Wind Speed (mph)",
     pch = 19, col = "darkgreen")
dev.off()   # closes the second file
