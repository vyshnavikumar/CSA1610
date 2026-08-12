data <- c(1,1,5,5,5,5,8,8,8,10,10,10,10,12,14,14,14,15,15,15,15,15,15,
18,18,18,18,18,20,20,20,20,20,20,20,21,21,21,21,25,25,25,25,25,28,28,30)

bins <- split(data, cut(seq_along(data), 3, labels = FALSE))

print(bins)

bin_mean <- lapply(bins, function(x) rep(mean(x), length(x)))
print(bin_mean)

smooth_boundary <- function(x){
  left <- min(x)
  right <- max(x)

  sapply(x, function(i){
    if(abs(i-left) <= abs(i-right))
      left
    else
      right
  })
}

bin_boundary <- lapply(bins, smooth_boundary)
print(bin_boundary)

hist(data,
     breaks = 3,
     col = "lightblue",
     main = "Histogram",
     xlab = "Values")