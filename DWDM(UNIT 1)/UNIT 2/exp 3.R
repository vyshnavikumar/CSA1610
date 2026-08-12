ClassA <- c(76,35,47,64,95,66,89,36,84)
ClassB <- c(51,56,84,60,59,70,63,66,50)

mean(ClassA)
mean(ClassB)

median(ClassA)
median(ClassB)

range(ClassA)
range(ClassB)

diff(range(ClassA))
diff(range(ClassB))

boxplot(ClassA, ClassB,
        names = c("Class A", "Class B"),
        col = c("pink", "lightgreen"),
        main = "Marks Comparison")

cat("Compare the median, spread and outliers using the boxplot.\n")
