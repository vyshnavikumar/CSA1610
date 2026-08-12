data(mtcars)

boxplot(mpg ~ cyl,
        data = mtcars,
        col = c("pink", "yellow", "lightgreen"),
        xlab = "Cylinders",
        ylab = "Miles per Gallon",
        main = "MPG vs Cylinders")