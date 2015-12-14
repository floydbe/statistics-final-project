male <- read.csv(paste(getwd(),"/male-cs1.csv", sep=""), header=TRUE)
female <- read.csv(paste(getwd(), "/female-cs1.csv", sep=""), header=TRUE)

m <- male$grades
f <- female$grades

mean(m)
sd(m)

mean(f)
sd(f)

t.test(m,f)
