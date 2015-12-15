# I feel that I fit in well with students in the CS/CPE program
fit <- matrix(c(
	36,209,242,89,25,
	15,91,191,86,32), 
	nrow=2, byrow=TRUE)
colnames(fit) <- c("s_agree","agree", "neutral", "disagree", "s_disagree")
rownames(fit) <- c("male", "female")

# I have an interest in computing
interest <- matrix(c(
	135,285,114,45,23,
	39,166,106,71,34),
	nrow=2, byrow=TRUE)
colnames(interest) <- c("s_agree","agree", "neutral", "disagree", "s_disagree")
rownames(interest) <- c("male", "female")

# I am doing well in the CS/CpE program based on my own expectations
expec_own <- matrix(c(
	29,68,39,36,11,
	9,51,33,22,13),
	nrow=2, byrow=TRUE)
colnames(expec_own) <- c("s_agree","agree", "neutral", "disagree", "s_disagree")
rownames(expec_own) <- c("male", "female")

# I am doing well in the CS/CpE program based on the expectations of others
expec_other <- matrix(c(
	34,64,55,25,6,
	10,41,50,17,11),
	nrow=2, byrow=TRUE)
colnames(expec_other) <- c("s_agree","agree", "neutral", "disagree", "s_disagree")
rownames(expec_other) <- c("male", "female")

cs1 <- chisq.test(expec_own)
cs1

cs2 <- chisq.test(expec_other)
cs2
cs2$stdres
