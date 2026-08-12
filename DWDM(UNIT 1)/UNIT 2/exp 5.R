data(AirPassengers)

hist(AirPassengers,
     breaks = seq(100,700,150),
     xlim = c(100,700),
     col = "skyblue",
     main = "AirPassengers Histogram",
     xlab = "Passengers")
