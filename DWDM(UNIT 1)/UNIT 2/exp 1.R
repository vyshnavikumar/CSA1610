# Create data
Age <- c(5.5, 7.5, 9.5)
A <- c(18, 2, 20)
B <- c(22, 28, 10)
C <- c(20, 40, 40)

data <- data.frame(A, B, C)

cov(B, C)

cov(data)

cor(B, C)

cor(data)

plot(Age, B,
     main = "Age vs Preference for Photograph B",
     xlab = "Age",
     ylab = "Preference",
     pch = 19,
     col = "blue")

cat("The study uses only three age groups with a very small sample size.\n")
cat("Hence, it is difficult to conclude a significant relationship.\n")