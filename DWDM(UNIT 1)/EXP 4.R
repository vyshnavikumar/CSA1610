# Data
x <- c(11,13,13,15,15,16,19,20,
       20,20,21,21,22,23,24,30,
       40,45,45,45,71,72,73,75)

# Divide into 3 equal-depth bins
bins <- split(x, rep(1:3, each = 8))

# (a) Smoothing by Bin Mean
bin_mean <- lapply(bins, function(b)
  rep(mean(b), length(b)))
cat("Smoothing by Bin Mean:\n")
print(bin_mean)

# (b) Smoothing by Bin Median
bin_median <- lapply(bins, function(b)
  rep(median(b), length(b)))
cat("\nSmoothing by Bin Median:\n")
print(bin_median)

# (c) Smoothing by Bin Boundaries
bin_boundary <- lapply(bins, function(b) {
  low <- min(b)
  high <- max(b)
  sapply(b, function(x)
    ifelse(abs(x-low) <= abs(x-high), low, high))
})

cat("\nSmoothing by Bin Boundaries:\n")
print(bin_boundary)