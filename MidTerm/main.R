getwd()
data <- read.csv("fl_student_survey.csv")
data


# Task #1
life_after_death = data$life_after_death
life_after_death_num = length(data$life_after_death[data$life_after_death == 'y'])
life_after_death_prop = life_after_death_num / length(data$life_after_death)

conf = 95
n = length(data$life_after_death)
z = qnorm(conf/100+(1-conf/100)/2)


formula = z*(sqrt(life_after_death_prop*(1 - life_after_death_prop)) / sqrt(n))
interval_length = (life_after_death_prop + formula) - (life_after_death_prop - formula)
interval_length


# Task #2
confidence = 90
alpha = 1 - confidence / 100
n = length(data$abortion_legalize)
x = length(data[data$abortion_legalize == 'y',]$abortion_legalize)
p_hat = x / n
t_alpha_half = abs(qt(alpha/2, n-1))

res = t_alpha_half * sqrt((p_hat * (1 - p_hat)) / n)
res * 2



# Task 3
confidence = 90
alpha = 1 - confidence / 100
n = length(data$high_sch_GPA)
s = sd(data$high_sch_GPA)
X_ = mean(data$high_sch_GPA)
t_alpha_half = abs(qt(alpha/2, n-1))
res = t_alpha_half * s / sqrt(n)
res

# Task 4 

alpha = 1 - confidence / 100
n = length(data$sports)
s = sd(data$sports)
X_ = mean(data$sports)
t_alpha_half = abs(qt(alpha/2, n-1))
res = t_alpha_half * s / sqrt(n)
final = X_ - res
final

# Task 5
x <- c(2, 1, 7, 2, 3, 5)
lower_bound = 0.95
upper_bound = 6.05

mean(x)-lower_bound
l = (upper_bound - lower_bound)/2
n = 6
s = sd(x)
t_alpha_half = l / (s / sqrt(n))
1 - (1 - pt(t_alpha_half, n))*2




