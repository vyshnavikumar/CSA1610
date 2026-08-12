install.packages("HSAUR")

library(HSAUR)

data("water")

plot(water$hardness,
     water$mortality,
     pch = 19,
     col = "blue",
     xlab = "Hardness",
     ylab = "Mortality",
     main = "Hardness vs Mortality")

model <- lm(mortality ~ hardness, data = water)

summary(model)

abline(model, col = "red")

predict(model,
        newdata = data.frame(hardness = 88))