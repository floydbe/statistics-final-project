male <- read.csv(paste(getwd(),"/male.csv", sep=""), header=TRUE)
female <- read.csv(paste(getwd(), "/female.csv", sep=""), header=TRUE)
unknown <- read.csv(paste(getwd(), "/unknown.csv", sep=""), header=TRUE)

m <- male$grades
f <- female$grades
u <- unknown$grades

mean(m)
sd(m)

mean(f)
sd(f)

mean(u)
sd(u)

t.test(m,f)
