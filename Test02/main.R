# get and read the data
getwd()
Titanic <- read.csv("Titanic.csv")
Titanic

#Deliverable 2: Using the ifelse function covered in Chapter 1

Titanic$Survived.char <-
  ifelse(
    test = (Titanic$Survived == 1),
    yes = "Survived",
    no = "Did Not Survive"
  )


#3. Calculate the frequency and relative frequency of survival for Titanic passengers.

# relative frequency (the proportion of observations)
prop.table(table(Titanic$Survived.char))


# in %s
prop.table(table(Titanic$Survived.char))* 100

#4.Calculate the frequency and relative frequency of passengers in each ticket class.

class_freq <- table(Titanic$Pclass)
class_rel_freq <- prop.table(class_freq)
class_freq


#5.Create a bar chart to display the number of passengers who survived and did not survive the Titanic sinking.

library(ggplot2)

ggplot(Titanic, aes(x = Survived.char)) + 
  geom_bar() + 
  xlab("Survival") + 
  ylab("Count")

#6. Create a pie chart to display the percent of passengers who traveled under each ticket class.

ggplot(Titanic, aes(x = "", fill = factor(Pclass))) + 
  geom_bar(width = 1) + 
  coord_polar(theta = "y") +
  scale_fill_discrete(name = "Ticket Class") + 
  labs(x = NULL, y = NULL, title = "Ticket Class Distribution")


#7.Create a contingency table to show the joint distribution of survival and passenger ticket class.

table(Titanic$Survived, Titanic$Pclass)


#8.Draw a side-by-side bar chart to show the number of passengers
#in each ticket class who survived and did not survive. You can
#use the argument args.legend = list(x="topleft")
#to move the legend to the top left of the graph.


barplot(
  table(Titanic$Survived, Titanic$Pclass),
  main="Survived or Not",
  beside = TRUE,
  legend.text = TRUE,
  xlab = "",
  ylab = "Number of Passangers"
)