#### Rscript SecondAssignment_R.r regrex1.csv


## read argument
args <- commandArgs(T)


## load data
df <- read.csv(args[1], head = TRUE)


## plot scatter
png("r_orig.png")
plot(y ~ x, data = df)
Null <- dev.off()


## model the data
linear_regressor <- lm(y ~ x, data = df)


## plot scatter with predicting value
png("r_lm.png")
plot(y ~ x, data = df)
abline(linear_regressor, col = "red")
Null <- dev.off()