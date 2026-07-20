
marks <- c(55,60,71,63,55,65,50,55,58,
           59,61,63,65,67,71,72,75)

marks <- sort(marks)

cat("Sorted Marks:\n")
print(marks)


bins_equal_freq <- split(marks,
                         cut(seq_along(marks),
                             breaks = 3,
                             labels = FALSE))

cat("\nEqual-Frequency Partitioning:\n")
print(bins_equal_freq)

bins_equal_width <- cut(marks,
                        breaks = 3,
                        include.lowest = TRUE)

cat("\nEqual-Width Partitioning:\n")
print(split(marks, bins_equal_width))


hist(marks,
     breaks = 3,
     main = "Histogram of Student Marks",
     xlab = "Marks",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")