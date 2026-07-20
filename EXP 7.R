# Create vector
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

# Mean
cat("Mean =", mean(pencils), "\n")

# Median
cat("Median =", median(pencils), "\n")

# Mode
freq <- table(pencils)
mode_value <- names(freq[freq == max(freq)])
cat("Mode =", mode_value, "\n")