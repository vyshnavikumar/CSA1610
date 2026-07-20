# Age Data
age <- c(23,23,27,27,39,41,47,49,50,
         52,54,54,56,57,58,58,60,61)

# Value to normalize
x <- 35

# (i) Min-Max Normalization
min_max <- (x - min(age)) / (max(age) - min(age))

# (ii) Z-Score Normalization
mean_age <- mean(age)
sd_age <- 12.94
z_score <- (x - mean_age) / sd_age

# (iii) Decimal Scaling
j <- nchar(as.character(max(age)))
decimal_scaling <- x / (10^j)

# Display Results
cat("Min-Max Normalization =", min_max, "\n")
cat("Z-Score Normalization =", z_score, "\n")
cat("Decimal Scaling =", decimal_scaling, "\n")