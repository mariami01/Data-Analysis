# 4.41. For a single toss of a coin, let y = 1 for a head and y = 0 for a tail, to simulate the vote in
# an election with two equally preferred candidates. (a) Construct the probability distribution
# for y, and find its mean. (b) The coin is flipped 10 times, yielding six heads and four tails.
# Construct the sample data distribution.


y <- c(1, 0) # possible outcomes for y
p <- c(0.5, 0.5) # probability of outcomes

prob_dist <- data.frame(y, p)
prob_dist
mean_y <- mean(y, weights=p) 
mean_y


#(b) The coin is flipped 10 times, yielding six heads and four tails.
# Construct the sample data distribution.
dbinom(6, 10,0.6)
