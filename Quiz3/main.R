data = read.csv("fl_student_survey.csv",header=TRUE,sep=",",dec=".")


head(data)

# Task 1 
men_data <- data[data$gender == "m", ]
women_data <- data[data$gender == "f", ]

alpha <- 0.05
t_test_result <- t.test(men_data$age, women_data$age, var.equal = TRUE)
p_value <- t_test_result$p.value
hypothesis_result <- ifelse(p_value < alpha, "Reject hypothesis", "Fail to reject hypothesis")

hypothesis_result

confidence_level <- 0.90
confidence_interval <- t_test_result$conf.int

confidence_interval


# Task 2

men_data <- data[data$gender == "m", "age"]
women_data <- data[data$gender == "f", "age"]


t_test_result <- t.test(men_data, women_data, var.equal = FALSE, alternative = "great")
p_value <- t_test_result$p.value

p_value #0.2643274

# to be continued
men_mean = mean(men_data)
women_data = mean(women_data)
men_sd = sd(men_data)
women_data = sd(women_data)
# -------


# Task 3

men_data <- data[data$gender == "m", "high_sch_GPA"]
women_data <- data[data$gender == "f", "high_sch_GPA"]

t_test_result <- t.test(men_data, women_data, var.equal = FALSE, alternative = "less")
p_value <- t_test_result$p.value

p_value # 0.16


# Task 4 
men_data = data[data$gender == "m", "abortion_legalize"]
women_data = data[data$gender == "f", "abortion_legalize"]

n_men = length(men_data)
n_women=length(women_data)

n_men_support=sum(men_data == "y")
n_women_support=sum(women_data == "y")

prop_men_support=n_men_support / n_men
prop_women_support=n_women_support / n_women

p_line = (n_men_support + n_women_support) / (n_men + n_women)
p1 = n_men_support/n_men
p2 = n_women_support/n_women

Z = (p1-p2)/sqrt(p_line*(1-p_line)*(1/n_men+1/n_women))
pnorm(Z) #0.14 


# Task 5
men_data = data[data$gender == "m", "vegetarian"]
women_data = data[data$gender == "f", "vegetarian"]

n_men = length(men_data)
n_women=length(women_data)

n_men_veg=sum(men_data == "y")
n_women_veg=sum(women_data == "y")

p_line = (n_men_veg + n_women_veg) / (n_men + n_women)
p1 = n_men_veg/n_men
p2 = n_women_veg/n_women

Z = (p1-p2)/sqrt(p_line*(1-p_line)*(1/n_men+1/n_women))
Z
pnorm(Z) #
p_val=  2 * pnorm(Z)
p_val #0.33

