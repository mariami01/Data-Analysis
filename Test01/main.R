#fl_student_survey მონაცმეების შემოტანა
getwd()
data <- read.csv("fl_student_survey.csv")
print(data)

# საჭირო ფექიჯების შემოტანა
library(ggplot2)


#1. ააგეთ ჰისტოგრამა age, high_sch_GPA, college_GPA ,distance_home ,distance_residence ცვლადებისთვის
hist(data$age, main = "Age Distribution", xlab = "Age")
hist(data$high_sch_GPA, main = "High School GPA Distribution", xlab = "GPA")
hist(data$college_GPA,  main = "College GPA Distribution", xlab = "GPA")
hist(data$distance_home, main = "Distance from Home Distribution", xlab = "Distance (miles)")
hist(data$distance_residence, main = "Distance from Residence Distribution", xlab = "Distance (miles)")

#2. ჰისტოგრამის საშუალებით აღწერეთ მონცემების განაწილების ფორმა
#ჰისტოგრამა აჩვენებს, რომ ასაკი და საშუალო სკოლის GPA არ არის ნორმალურად არის განაწილებული,
# ხოლო კოლეჯის GPA, სახლიდან დაშორება და საცხოვრებელის დაშორება გაფანტულია/გადახრილია მარჯვნივ

#3. ააგეთ Boxplot დიაგრამა age, high_sch_GPA, college_GPA ,distance_home ,distance_residence ცვლადებისთვის
# Load necessary packages


# boxplot - age
ggplot(data, aes(x="", y=age)) +
  geom_boxplot(fill="lightblue", color="blue") +
  labs(x=NULL, y="Age", title="Boxplot of Age")

# boxplot - high school GPA
ggplot(data, aes(x="", y=high_sch_GPA)) +
  geom_boxplot(fill="lightgreen", color="darkgreen") +
  labs(x=NULL, y="High School GPA", title="Boxplot of High School GPA")

# boxplot - college GPA
ggplot(data, aes(x="", y=college_GPA)) +
  geom_boxplot(fill="lightyellow", color="orange") +
  labs(x=NULL, y="College GPA", title="Boxplot of College GPA")

# boxplot - distance from home
ggplot(data, aes(x="", y=distance_home)) +
  geom_boxplot(fill="lightpink", color="red") +
  labs(x=NULL, y="Distance from Home (miles)", title="Boxplot of Distance from Home")

# boxplot - distance from residence
ggplot(data, aes(x="", y=distance_residence)) +
  geom_boxplot(fill="lightyellow", color="orange") +
  labs(x=NULL, y="Distance from Residence (miles)", title="Boxplot of Distance from Residence")

#4.გამოთვალეთ ზემოთ მოტანილი მონაცემებისთვის საშუალო(mean), მედიანა(median), სტანდარტული გადახრა(sd)
#შიდა კვარტილური დიაპაზონი(IQR). ამ მახასიათებლებით აღწერეთ მონაცემები


mean_age <- mean(data$age)
median_age <- median(data$age)
sd_age <- sd(data$age)
iqr_age <- IQR(data$age)

mean_high_sch_GPA <- mean(data$high_sch_GPA)
median_high_sch_GPA <- median(data$high_sch_GPA)
sd_high_sch_GPA <- sd(data$high_sch_GPA)
iqr_high_sch_GPA <- IQR(data$high_sch_GPA)

mean_college_GPA <- mean(data$college_GPA)
median_college_GPA <- median(data$college_GPA)
sd_college_GPA <- sd(data$college_GPA)
iqr_college_GPA <- IQR(data$college_GPA)

mean_distance_home <- mean(data$distance_home)
median_distance_home <- median(data$distance_home)
sd_distance_home <- sd(data$distance_home)
iqr_distance_home <- IQR(data$distance_home)

mean_distance_residence <- mean(data$distance_residence)
median_distance_residence <- median(data$distance_residence)
sd_distance_residence <- sd(data$distance_residence)
iqr_distance_residence <- IQR(data$distance_residence)

#5. fivenum ფუნქცის გამოყენებით დაახასიათეთ age, high_sch_GPA,college_GPA ,distance_home ,distance_residence მონაცემებისთვის
# fivenum: The minimum value, The first quartile (Q1), The median (Q2), 
#The third quartile (Q3), The maximum value

#To get an overview of the distribution of a dataset, particularly for detecting outliers 
# and determining the spread of the data.
fivenum_age <- fivenum(data$age)
fivenum_high_sch_GPA <- fivenum(data$high_sch_GPA)
fivenum_college_GPA <- fivenum(data$college_GPA)
fivenum_distance_home <- fivenum(data$distance_home)
fivenum_distance_residence <- fivenum(data$distance_residence)


#6. summary ფუნქცის გამოყენებით დაახასიათეთ age, high_sch_GPA, college_GPA,distance_home,distance_residence მონაცემები

summary(data[, c("age", "high_sch_GPA", "college_GPA", "distance_home", "distance_residence")])

summary(data$age)
summary(data$high_sch_GPA)
summary(data$college_GPA)
summary(data$distance_home)
summary(data$distance_residence)
