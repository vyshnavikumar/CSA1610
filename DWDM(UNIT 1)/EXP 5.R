# Age and %Fat data

age <- c(23,23,27,27,39,41,47,49,50,
         52,54,54,56,57,58,58,60,61)

fat <- c(9.5,26.5,7.8,17.8,31.4,25.9,27.4,27.2,31.2,
         34.6,42.5,28.8,33.4,30.2,34.1,32.9,41.2,35.7)

# (a) Mean
cat("Mean of Age =", mean(age), "\n")
cat("Mean of %Fat =", mean(fat), "\n\n")

# Median
cat("Median of Age =", median(age), "\n")
cat("Median of %Fat =", median(fat), "\n\n")

# Standard Deviation
cat("Standard Deviation of Age =", sd(age), "\n")
cat("Standard Deviation of %Fat =", sd(fat), "\n\n")

# (b) Boxplots
boxplot(age,
        main="Boxplot of Age",
        ylab="Age")

boxplot(fat,
        main="Boxplot of %Fat",
        ylab="% Fat")

# (c) Scatter Plot
plot(age, fat,
     main="Scatter Plot of Age vs %Fat",
     xlab="Age",
     ylab="% Fat",
     pch=19)

# Q-Q Plot for Age
qqnorm(age, main="Q-Q Plot of Age")
qqline(age)

# Q-Q Plot for %Fat
qqnorm(fat, main="Q-Q Plot of %Fat")
qqline(fat)