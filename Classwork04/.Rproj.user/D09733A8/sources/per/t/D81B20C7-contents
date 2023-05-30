
getwd()
Lister <- read.csv("Lister.csv")
Lister

#Deliverable 2: Using the ifelse function covered in Chapter 1

Lister$Outcome.char <-
  ifelse(
    test = (Lister$Outcome == 1),
    yes = "Survived",
    no = "Did Not Survive"
  )
Lister$Antiseptic.char <-
  ifelse(
    test = (Lister$Antiseptic == 1),
    yes = "After Antiseptics",
    no = "Before Antiseptics"
  )


#Deliverable 3: Calculate the frequency and relative frequency of
#survival for the patients in Lister’s study.
#table(Lister$Outcome.char)

# relative frequency (the proportion of observations)
prop.table(table(Lister$Outcome.char))


# in %s
prop.table(table(Lister$Outcome.char)) * 100

# Deliverable 4: Calculate the frequency and relative frequency of
#the time period (before or after the discovery of antiseptics) in
#which the amputations were performed.

table(Lister$Antiseptic.char)

# in %s
prop.table(table(Lister$Antiseptic.char)) * 100


# Deliverable 5: Create a bar chart to display the number of patients
#who survived and did not survive.

barplot(
  table(Lister$Outcome.char),
  main = "Patient Outcome After Limb Amputation",
  xlab = "Outcome After Limb Amputation",
  ylab = "Number of Patients"
)

# Deliverable 6: Create a pie chart to display the percent of patients
#who had amputations performed before and after the discovery of
#antiseptics.

pie(
  prop.table(table(Lister$Antiseptic.char)) * 100,
  main = "Percent of Patients with Amputations
Performed
Before and After the Discovery of
Antiseptics",
  col = c("darkblue", "darkcyan")
)
legend(
  "topright",
  legend = c("53.3 %", "46.7 %"),
  fill = c("darkblue", "darkcyan")
)


#Deliverable 7: Create a contingency table to show the joint
#distribution of survival and antiseptic use.

table(Lister$Outcome.char, Lister$Antiseptic.char)


#Deliverable 8: Draw a side-by-side bar chart to show the number
#of patients who survived and did not survive a limb amputation
#before and after the discovery of antiseptics.

barplot(
  table(Lister$Outcome.char, Lister$Antiseptic.char),
  main="Patient Survival by Antiseptic Use",
  beside = TRUE,
  legend.text = TRUE,
  xlab = "Time Period",
  ylab = "Number of Patients"
)
