# Task 1 
n = 36
Xbar = 23.5
mu = 24
alpha = 0.2
sigma = 1

Z = (Xbar - mu)/(sigma/sqrt(n))

Z
qnorm(p=.02, lower.tail=TRUE)

if(Z<qnorm(p=.02, lower.tail=TRUE)){
  print("reject")
}else{
  print("do not reject!")
}

# Task 2
n = 100
Xbar = 19.5
mu = 21
alpha = 0.01
sigma = 3

alpha2 = alpha/2

Z = (Xbar - mu)/(sigma/sqrt(n))

Z
qnorm(p=alpha2, lower.tail=TRUE)

if(Z<qnorm(p=alpha2, lower.tail=TRUE)){
  print("reject")
}else{
  print("do not reject!")
}


# Task 3
n = 7
Xbar = 104
mu = 100
alpha = 0.25
s = 5

alpha2 = alpha/2

t = (Xbar - mu)/(s/sqrt(n))

t
qt(p=alpha2, df=alpha2, n-1)

if(t<qt(p=alpha2, df=alpha2, n-1) | t>-qt(p=alpha2, df=alpha2, n-1)){
  print("reject")
}else{
  print("do not reject!")
}

