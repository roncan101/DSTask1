# --- Humidity histogram ---
png("subtask3_humidity.png", width=800, height=600)
hist(ZHW2023$humidity[ZHW2023$`rain_t?` == "Y"],
     col = rgb(1,0,0,0.5), breaks = 20,
     xlim = range(ZHW2023$humidity, na.rm=TRUE),
     main = "Humidity Distribution by Tomorrow's Rain",
     xlab = "Humidity (z-score)", ylab = "Frequency")
hist(ZHW2023$humidity[ZHW2023$`rain_t?` == "N"],
     col = rgb(0,0,1,0.5), breaks = 20, add = TRUE)
legend("topright", legend=c("Rain Tomorrow (Y)", "No Rain (N)"),
       fill=c(rgb(1,0,0,0.5), rgb(0,0,1,0.5)))
dev.off()

# --- Temp_max histogram ---
png("subtask3_temp_max.png", width=800, height=600)
hist(ZHW2023$temp_max[ZHW2023$`rain_t?` == "Y"],
     col = rgb(1,0,0,0.5), breaks = 20,
     xlim = range(ZHW2023$temp_max, na.rm=TRUE),
     main = "Temp_max Distribution by Tomorrow's Rain",
     xlab = "Max Temperature (z-score)", ylab = "Frequency")
hist(ZHW2023$temp_max[ZHW2023$`rain_t?` == "N"],
     col = rgb(0,0,1,0.5), breaks = 20, add = TRUE)
legend("topright", legend=c("Rain Tomorrow (Y)", "No Rain (N)"),
       fill=c(rgb(1,0,0,0.5), rgb(0,0,1,0.5)))
dev.off()

# --- Rain histogram ---
png("subtask3_rain.png", width=800, height=600)
hist(ZHW2023$rain[ZHW2023$`rain_t?` == "Y"],
     col = rgb(1,0,0,0.5), breaks = 20,
     xlim = range(ZHW2023$rain, na.rm=TRUE),
     main = "Rain Distribution by Tomorrow's Rain",
     xlab = "Rain Today (z-score)", ylab = "Frequency")
hist(ZHW2023$rain[ZHW2023$`rain_t?` == "N"],
     col = rgb(0,0,1,0.5), breaks = 20, add = TRUE)
legend("topright", legend=c("Rain Tomorrow (Y)", "No Rain (N)"),
       fill=c(rgb(1,0,0,0.5), rgb(0,0,1,0.5)))
dev.off()
