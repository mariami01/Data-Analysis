set.seed(50000)
asaki=22+rexp(50000,1)
asaki=round(asaki)#damrgvaleba

asaki


means = c()
for(i in 1:100){
  means= c(means, mean(sample(asaki, 1000, replace=FALSE)))
}

means
