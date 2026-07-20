# Age intervals
lower <- c(1, 5, 15, 20, 50, 80)
upper <- c(5, 15, 20, 50, 80, 110)

# Frequencies
freq <- c(200, 450, 300, 1500, 700, 44)

# Total frequency
N <- sum(freq)

# Cumulative frequencies
cf <- cumsum(freq)

# Find median class
median_index <- which(cf >= N/2)[1]

# Parameters for grouped median
L <- lower[median_index]
f <- freq[median_index]
CF <- ifelse(median_index == 1, 0, cf[median_index - 1])
h <- upper[median_index] - lower[median_index]

# Median calculation
median_value <- L + ((N/2 - CF) / f) * h

# Output
cat("Total Frequency =", N, "\n")
cat("Median Class =", lower[median_index], "-", upper[median_index], "\n")
cat("Approximate Median =", median_value, "\n")