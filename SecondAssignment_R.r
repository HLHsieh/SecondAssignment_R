### Rscript SecondAssignment_R.r regrex1.csv

## load data
df = read.csv("regrex1.csv", head = TRUE)


## plot scatter
png("r_orig.png")
plot(y ~ x, data = df)
dev.off()


## model the data
linear_regressor <- lm(y ~ x, data = df)
# summary(linear_regressor)
# Y_pred <- predict(linear_regressor, data = data.frame(df$x))


## plot scatter with predicting value
png("r_lm.png")
plot(y ~ x, data = df)
abline(linear_regressor, col  = "red")
dev.off()