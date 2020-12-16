# This is two sample hypothesis test
# We considered Population X : < 65 years of age and
# Population Y: >above 65 years of age

X_NAA <- c(1.49,1.43,1.45,1.47,1.27,1.43,1.24,1.48,1.41,1.5,1.32)
X_MI <- c(0.72,0.68,0.62,0.72,0.67,0.7,0.76,0.57,0.66,0.67,0.68)
Y_NAA <- c(1.34,1.13,1.09,1.30,1.34,1.33,1.21,1.34,1.52,1.43)
Y_MI <- c(0.62,0.56,0.63,0.62,0.79,0.67,0.62,0.62,0.61,0.7)
alpha = 0.05

# part a) Study of variance of NAA levels of Population X and Population Y
# H0: (sigma of X_NAA)*(sigma of X_NAA) = (sigma of Y_NAA)*(sigma of Y_NAA)
# H1: (sigma of X_NAA)*(sigma of X_NAA) != (sigma of Y_NAA)*(sigma of Y_NAA)
vartest_NAA <- var.test(X_NAA,Y_NAA,ratio=1,alternative = "two.sided",conf.level = 0.95)
print(vartest_NAA)

# part b) Study of variance of Mi levels of Population X and Population Y
# H0: (sigma of X_MI)*(sigma of X_MI) == (sigma of Y_MI)*(sigma of Y_MI)
# H1: (sigma of X_MI)*(sigma of X_MI) != (sigma of Y_MI)*(sigma of Y_MI)
vartest_MI <- var.test(X_MI,Y_MI,ratio=1,alternative = "two.sided",conf.level = 0.95)
print(vartest_MI)

# part c) Study of Mean of NAA levels of Population X and Population Y
# H0: X_NAA-Y_NAA=0 
# H1: X_NAA-Y_NAA>0   
meantest_NAA <<- t.test(X_NAA,Y_NAA,alternative = "greater", mu = 0, paired = FALSE, var.equal = TRUE, conf.level = 0.95)
print(meantest_NAA)

# part d)Study of Mean of Mi levels of Population X and Population Y
# H0: X_MI-Y_MI=0 
# H1: X_MI-Y_MI>0 
meantest_MI <<- t.test(X_MI,Y_MI,alternative = "greater", mu = 0, paired = FALSE, var.equal = TRUE, conf.level = 0.95)
print(meantest_MI)
