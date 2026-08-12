v <- 80000
min1 <- 50000
max1 <- 100000

norm <- (v - min1) / (max1 - min1)
print(norm)

x <- c(200,300,400,600,1000)

minmax <- (x - min(x)) / (max(x) - min(x))
print(minmax)

zscore <- (x - mean(x)) / sd(x)
print(zscore)

