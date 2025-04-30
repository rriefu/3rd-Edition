rm(list=ls())

setwd("C:\\Users\\yang.OFFICE365\\Documents\\GitHub\\3rd-Edition\\Data for Review Exercises")
list.files()


#######   

df=read_dta("ldl.dta")
names(df)

hist(df$ldl_corn)
hist(df$ldl_oat)

sample=df[sample(nrow(df), size = 50, replace= TRUE)]

hist(sample$total_cholesterol)
hist(sample$ldl_oat)

shapiro.test(df$sc_fat)
shapiro.test(df$total_cholesterol)

qqnorm(sample$total_cholesterol)
qqline(sample$total_cholesterol)

qqnorm(sample$sc_fat)
qqline(sample$sc_fat)

shapiro.test(sample$sc_fat)
shapiro.test(sample$total_cholesterol)

install.packages("nortest")
library(nortest)
lillie.test(sample$sc_fat)
lillie.test(sample$total_cholesterol)


# Sample 10% of rows
sampled_data <- your_data %>% slice_sample(prop = 0.1)
