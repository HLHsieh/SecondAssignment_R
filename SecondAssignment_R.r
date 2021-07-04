#### Rscript SecondAssignment_R.r regrex1.csv

## read arguement
args<-commandArgs(T)


## load data
df <- read.csv(args[1], head = TRUE)

## plot scatter
png("r_orig.png")
plot(y ~ x, data = df)
Null <- dev.off()


## model the data
linear_regressor <- lm(y ~ x, data = df)
# summary(linear_regressor)
# Y_pred <- predict(linear_regressor, data = data.frame(df$x))


## plot scatter with predicting value
png("r_lm.png")
plot(y ~ x, data = df)
abline(linear_regressor, col  = "red")
Null <-dev.off()