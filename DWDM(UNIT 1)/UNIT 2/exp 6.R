data(mtcars)

plot(mtcars$mpg,
     type = "l",
     col = "blue",
     ylim = range(c(mtcars$mpg, mtcars$qsec)),
     xlab = "Car Index",
     ylab = "Values",
     main = "Multiple Line Chart")

lines(mtcars$qsec,
      col = "red")

legend("topright",
       legend = c("mpg", "qsec"),
       col = c("blue", "red"),
       lty = 1)