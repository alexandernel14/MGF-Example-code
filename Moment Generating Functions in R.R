# Moment Generating Functions in R
# Example worksheet

install.packages("devtools")
library(devtools)

install_github("alexandernel14/MGF",force = TRUE)
library(MGF)

# The functions available in the package are mgf, cgf and MGF_evaluator
# Note if you encounter an error after loading the library and trying to run the code below, restart the Session.
# Use ctrl + shift + F10

# Moment Generating Function
?mgf

# Cumulant Generating Function
?cgf

# Moment Generating Function Evaluator
?MGF_evaluator

#Let us look at the Normal Distribution
# The first Moment is the same as the E[X]
# The second Moment is the same as the E[X^2]
# The second centralized moment E[(X-E[X])^2] is the Var[X]

# Find the MGF of the Normal Distribution
mgf("Normal")

# Find the CGF of the Normal Distribution
cgf(distribution = "Normal")

# Find the Moments up to the 3rd Moment of the Normal Distribution with mu = 100, and sigma = 15.
MGF_evaluator(distribution = "Normal", mu = 100, sigma = 15)
MGF_evaluator(distribution = "Normal", mu = 100, sigma = 15,order_of_moment = 2)
MGF_evaluator(distribution = "Normal", mu = 100, sigma = 15,order_of_moment = 3)

# Let us look at the Binomial Distribution Bin(10,0.5)
# The first Moment is the same as the E[X]
# The second Moment is the same as the E[X^2]
# The second centralized moment E[(X-E[X])^2] is the Var[X]
MGF_evaluator(distribution = "Binomial",n = 10,p = 0.5,order_of_moment = 1)
MGF_evaluator(distribution = "Binomial",n = 10,p = 0.5,order_of_moment = 2)

# Some examples for you to run on your own
MGF_evaluator("Normal") # Standard Normal
MGF_evaluator("Poisson",order_of_moment = 2,lambda = 5) # Poisson with lambda = 5

# Note that a Gamma with shape parameter equal to 1 is identical to an Exponential RV
# with the same lambda (rate parameter).
MGF_evaluator("Exponential",order_of_moment = 1,lambda = 5)
MGF_evaluator("Gamma",order_of_moment = 1, lambda = 5, alpha = 1)

# Chi square with k (degrees of freedom) equal to the default value of 2
MGF_evaluator("Chi-Square",order_of_moment = 1, k =2) 



















































