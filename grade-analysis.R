grade_data <- read.csv(paste(getwd(),"/grades.csv", sep=""), header=TRUE)
males <- subset(grade_data, grade_data$gender=="male")
females <- subset(grade_data, grade_data$gender=="female")
unknown <- subset(grade_data, grade_data$gender=="unknown")

# descriptive statistics
aggregate(grade_data$grade, by=list(grade_data$gender), mean)
aggregate(grade_data$grade, by=list(grade_data$gender), sd)

# side-by-side boxplot for grade data
png("boxplot.png")
boxplot(grade~gender,data=grade_data)
dev.off()

# perform an ANOVA
g_model <- aov(grade~gender, data=grade_data)
summary(g_model)
# ANOVA isn't significant, but do Tukey's just to see it
TukeyHSD(g_model)
# define omega squared effect size function
omega_sq <- function(aovm){
	sum_stats <- summary(aovm)[[1]]
	SSm <- sum_stats[["Sum Sq"]][1]
	SSr <- sum_stats[["Sum Sq"]][2]
	DFm <- sum_stats[["Df"]][1]
	MSr <- sum_stats[["Mean Sq"]][2]
	W2 <- (SSm-DFm*MSr)/(SSm+SSr+MSr)
	return(W2)
}
# use it to compute omega squared
omega_sq(g_model)

# test only male and female with independent samples t-test
t.test(males$grade,females$grade)

# effect size for the t-test
source("cohensD.R")
cohensD(males$grade, females$grade)
