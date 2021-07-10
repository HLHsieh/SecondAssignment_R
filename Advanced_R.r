#### Rscript SecondAssignment_R.r regrex1.csv


## read argument
args <- commandArgs(trailingOnly = TRUE)


## load data
df <- read.csv(args[1], head = TRUE)
print(paste0("loading ",args[1]))


## take out the file name
basename <- strsplit(args[1], ".")


## plot scatter
png(paste0("Advanced_", args[1], "_scatter.png"))
plot(y ~ x, data = df)
Null <- dev.off()
print(paste0("saving Advanced_", args[1], "_scatter.png"))


## model the data
linear_regressor <- lm(y ~ x, data = df)


## plot scatter with predicting value
png(paste0("Advanced_", args[1], "_scatter_lm.png"))
plot(y ~ x, data = df)
abline(linear_regressor, col = "red")
Null <- dev.off()
print(paste0("saving Advanced_", args[1], "_scatter_lm.png"))


## finish
print("done")