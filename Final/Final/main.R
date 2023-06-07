# Task 1 

# დატასეტის წაკითხვა
dataset <- read.csv("fl_student_survey.csv")
male_data <- subset(dataset, gender == "m")
mean_age <- mean(male_data$age)
sd_age <- sd(male_data$age)
n <- length(male_data$age)
SE <- sd_age / sqrt(n)
df <- n - 1
t_value <- qt(0.99, df)
ME <- t_value * SE
lower_bound <- mean_age - ME
upper_bound <- mean_age + ME
cat("Average age of male students:", mean_age, "\n")
cat("98% Confidence Interval:", lower_bound, "-", upper_bound, "\n")
#პასუხი 2) 9

# Task 2 
subset_data <- subset(dataset, affirmative_action_support == "y")
proportion <- sum(subset_data$affirmative_action_support == "y") / nrow(dataset)
standard_error <- sqrt(proportion * (1 - proportion) / nrow(dataset))
lower_bound <- proportion - 1.96 * standard_error
lower_bound
# პასუხი: 2) 0.6

# Task 3 
subset_data <- subset(dataset, abortion_legalize == "y")
proportion <- sum(subset_data$abortion_legalize == "y") / nrow(dataset)
standard_error <- sqrt(proportion * (1 - proportion) / nrow(dataset))
critical_value <- qnorm(0.8 + (1 - 0.8) / 2)
sampling_error <- critical_value * standard_error
sampling_error
# პასუხი: 2) 0.6
  
# Task 4 
sample_mean <- mean(dataset$age[dataset$gender == "m"])
sample_sd <- sd(dataset$age[dataset$gender == "m"])
desired_average <- 85
confidence_level <- 0.85
critical_value <- qt(1 - (1 - confidence_level) / 2, df = sum(dataset$gender == "m") - 1)
margin_of_error <- critical_value * (sample_sd / sqrt(sum(dataset$gender == "m")))
upper_bound <- sample_mean + margin_of_error
upper_bound
# პასუხი: 2) 32.6

# Task 5
interval <- c(0.62, 0.71)
sample_size <- 750
sample_proportion <- 500 / sample_size
standard_error <- sqrt((sample_proportion * (1 - sample_proportion)) / sample_size)
margin_of_error <- qnorm((1 + interval) / 2) * standard_error
confidence_level <- 1 - (2 * (1 - (1 + interval) / 2))

confidence_interval_percentage <- (1 - diff(confidence_interval)) * 100

confidence_interval_percentage


# პასუხი: 

# Task 6
x1 = mean(dataset[dataset$gender=='m',]$age)
s1 = sd(dataset[dataset$gender=='m',]$age)
n1 = length(dataset[dataset$gender=='m',]$age)

x2 = mean(dataset[dataset$gender=='f',]$age)
s2 = sd(dataset[dataset$gender=='f',]$age)
n2 = length(dataset[dataset$gender=='f',]$age)

t = (x1 - x2)/sqrt(s1^2 / n1 + s2^2 / n2)
v = ((s1^2/n1 + s2^2/n2)^2)/((s1^2/n1)^2/(n1-1) + (s2^2/n2)^2/(n2-1))
ifelse(-abs(t) < qt(0.05/2,v),'უარვყოფთ','უარყოფის საფუძველი არ გაგვაჩნია')

# პასუხი: 2) უარყოფის საფუძველი არ გაგვაჩნია

# Task 7
x1 <- mean(dataset[dataset$gender == 'm', ]$age)
s1 <- sd(dataset[dataset$gender == 'm', ]$age)
n1 <- length(dataset[dataset$gender == 'm', ]$age)

x2 <- mean(dataset[dataset$gender == 'f', ]$age)
s2 <- sd(dataset[dataset$gender == 'f', ]$age)
n2 <- length(dataset[dataset$gender == 'f', ]$age)
t <- (x1 - x2) / sqrt(s1^2 / n1 + s2^2 / n2)
df <- n1 + n2 - 2
p_value <- 1 - pt(t, df)
p_value
# პასუხი: 3) 26

# Task 8
x1 <- mean(dataset[dataset$gender == 'm', ]$high_sch_GPA)
s1 <- sd(dataset[dataset$gender == 'm', ]$high_sch_GPA)
n1 <- length(dataset[dataset$gender == 'm', ]$high_sch_GPA)

x2 <- mean(dataset[dataset$gender == 'f', ]$high_sch_GPA)
s2 <- sd(dataset[dataset$gender == 'f', ]$high_sch_GPA)
n2 <- length(dataset[dataset$gender == 'f', ]$high_sch_GPA)

t <- (x1 - x2) / sqrt(s1^2 / n1 + s2^2 / n2)

df <- n1 + n2 - 2

p_value <- pt(t, df)
p_value

# პასუხი: 1) 0.16

# Task 9
x1 = dataset$abortion_legalize[dataset$gender == 'm']=='y'
n1 = length(dataset$abortion_legalize[dataset$gender == 'm']=='y')

x2 = dataset$abortion_legalize[dataset$gender == 'f']=='y'
n2 = length(dataset$abortion_legalize[dataset$gender == 'f']=='y')

sp = ((n1-1)*(sd(x1)^2) + (n2-1)*(sd(x2)^2)) / ((n1-1) + (n2-1))
t = (mean(x1)-mean(x2)) / sqrt(sp*((1/n1)+(1/n2)))
pnorm(t)
# პასუხი: 1) 0.14


# Task 10
p1 <- sum(dataset$vegetarian[dataset$gender == 'm'] == 'y') / length(dataset$vegetarian[dataset$gender == 'm'])
p2 <- sum(dataset$vegetarian[dataset$gender == 'f'] == 'y') / length(dataset$vegetarian[dataset$gender == 'f'])
p_pool <- (sum(dataset$vegetarian == 'y')) / (length(dataset$vegetarian))
z <- (p1 - p2) / sqrt(p_pool * (1 - p_pool) * (1/length(dataset$vegetarian[dataset$gender == 'm']) + 1/length(dataset$vegetarian[dataset$gender == 'f'])))
p_value <- 2 * (1 - pnorm(abs(z)))
p_value

# პასუხი: 2) 0.33