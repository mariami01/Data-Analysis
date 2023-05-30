# 4.45
# get the data 
getwd()
data <- read.csv("household.csv")
data

# (a) Construct a stem-and-leaf plot or histogram of the population distribution.
stem(data$Age)

hist(data$Age, breaks = seq(0, 90, by = 10), 
     main = "Histogram of Ages", xlab = "Age")

# (b) Sampling and computing the sample mean. ȳ-> sample mean age

set.seed(50000)
# Define empty vector to store sample means
sample_means <- numeric(1000)

for(i in 1:100){
  sample <- sample(1:50, size = 9, replace = TRUE)
  sample_means[i] <- mean(data$Age[sample])
}

# Plot
hist(sample_means, main = "Sampling Distribution of Sample Means",
     xlab = "Sample Mean Age", ylab = "Frequency", col = "lightblue")
abline(v = mean(data$Age), col = "red", lwd = 2)
abline(v = mean(sample_means), col = "blue", lwd = 2)
legend("topright", legend = c("Population Mean", "Sample Mean"),
       col = c("red", "blue"), lwd = 2)

# (c) What do you expect for the mean of the y ̄-values in a long run of repeated samples of size 9?
set.seed(50000)
sample_means <- replicate(1000, mean(sample(data$Age, size = 9)))

hist(sample_means, breaks = 20, 
     main = "Histogram of Sample Means", xlab = "Sample Mean")

abline(v = mean(data$Age), col = "red") #a vertical line at the population mean

# (d) What do you expect for the standard deviation of the y ̄-values in a long run of repeated samples of size 9?

mean(sample_means)
mean(data$Age)
expected_sd <-sd(sample_means)/sqrt(9)
expected_sd