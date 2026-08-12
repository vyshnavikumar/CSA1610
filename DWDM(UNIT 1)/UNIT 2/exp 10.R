plot(diabetes$Age,
     diabetes$BloodPressure,
     pch = 19,
     col = "blue",
     xlab = "Age",
     ylab = "Blood Pressure",
     main = "Blood Pressure vs Age")

diabetes$AgeGroup <- cut(diabetes$Age,
                         breaks = c(20,30,40,50,60,70,80),
                         labels = c("20-30","30-40","40-50",
                                    "50-60","60-70","70-80"))

bp <- aggregate(BloodPressure ~ AgeGroup,
                data = diabetes,
                mean)

barplot(bp$BloodPressure,
        names.arg = bp$AgeGroup,
        col = "lightgreen",
        xlab = "Age Group",
        ylab = "Average Blood Pressure",
        main = "Average Blood Pressure by Age Group")