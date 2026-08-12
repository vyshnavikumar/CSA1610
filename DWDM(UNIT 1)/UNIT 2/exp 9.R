R

points <- c(18,20,25,22,24,21,23,26,19,120)

boxplot(points,
        col = "orange",
        main = "Player Scores")

boxplot.stats(points)$out