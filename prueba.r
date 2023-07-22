#make this example reproducible
set.seed(1)

#create dataset
data <- data.frame(offers = c(rep(0, 700), rep(1, 100), rep(2, 100),
                              rep(3, 70), rep(4, 30)),
                   division = sample(c('A', 'B', 'C'), 100, replace = TRUE),
                   exam = c(runif(700, 60, 90), runif(100, 65, 95),
                            runif(200, 75, 95)))

p_model <- glm(offers ~ division + exam, family = 'poisson', data = data)

#fit negative binomial regression model
library(MASS)

nb_model <- glm.nb(offers ~ division + exam, data = data)


p_res <- resid(p_model)
plot(fitted(p_model), p_res, col='steelblue', pch=16,
     xlab='Predicted Offers', ylab='Standardized Residuals', main='Poisson')
abline(0,0)

#Residual plot for negative binomial regression 
nb_res <- resid(nb_model)
plot(fitted(nb_model), nb_res, col='steelblue', pch=16,
     xlab='Predicted Offers', ylab='Standardized Residuals', main='Negative Binomial')
abline(0,0)