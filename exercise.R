rm(list=ls())

setwd("C:\\Users\\yang.OFFICE365\\Documents\\GitHub\\3rd-Edition\\Data for Review Exercises")
list.files()


#######   exercise week 2 #######  

df=read_dta("lipid.dta")
names(df)

# all samples
## Histogram
hist(df$total_cholesterol,
     main = "Histogram of Total Cholesterol",
     xlab = "Total Cholesterol (mg/dL)")

## Density plot
plot(density(df$total_cholesterol),
     main = "Density Plot of Total Cholesterol",
     xlab = "Total Cholesterol (mg/dL)")


## Boxplot
boxplot(df$total_cholesterol,
        main = "Total Cholesterol (n = 25)",
        ylab = "Total Cholesterol (mg/dL)")

## summary stats
mean(sample_25$total_cholesterol, na.rm = TRUE)
sd(sample_25$total_cholesterol, na.rm = TRUE)


# 25 samples
set.seed(1)
sample_25 <- df[sample(nrow(df), 25), ]

## Summary stats
mean(sample_25$total_cholesterol, na.rm = TRUE)
sd(sample_25$total_cholesterol, na.rm = TRUE)

## Histogram
hist(sample_25$total_cholesterol,
     main = "Histogram of Total Cholesterol",
     xlab = "Total Cholesterol (mg/dL)")



# 100 samples
set.seed(1)
sample_100 <- df[sample(nrow(df), 100), ]

## Summary stats
mean(sample_100$total_cholesterol, na.rm = TRUE)
sd(sample_100$total_cholesterol, na.rm = TRUE)

## Histogram
hist(sample_100$total_cholesterol,
     main = "Histogram of Total Cholesterol",
     xlab = "Total Cholesterol (mg/dL)")




# 1000 samples
set.seed(1)
sample_1000 <- df[sample(nrow(df), 1000), ]

## Summary stats
mean(sample_1000$total_cholesterol, na.rm = TRUE)
sd(sample_1000$total_cholesterol, na.rm = TRUE)

## Histogram
hist(sample_1000$total_cholesterol,
     main = "Histogram of Total Cholesterol",
     xlab = "Total Cholesterol (mg/dL)")
