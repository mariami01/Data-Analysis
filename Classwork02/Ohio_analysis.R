
getwd()

Ohio <- read.csv("Ohio.csv")

hist( x = Ohio$Death_total, main = "Total Mortality:
Ohio Companies, US Civil War", xlab = "Total Number of
Deaths", ylim = c(0, 20) )

fivenum(Ohio$Death_total)
mean(Ohio$Death_total)

hist( x = Ohio$No_soldiers, main = "Number of Soldiers: Ohio
Companies, US Civil War", ylim = c(0,20), xlim = c(0,200), xlab =
        "Number of Soldiers in each Company" )
