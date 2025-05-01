rm(list=ls())

setwd("C:\\Users\\yang.OFFICE365\\Documents\\GitHub\\3rd-Edition\\Data for Review Exercises")
list.files()


#######   exercise week 3 #######  

install.packages("haven") 
library(haven)

# Read the dataset
df <- read_dta("lowbwt.dta")

# Subset: male
male_sbp <- df$sbp[df$sex == 1]

# Summary stats
n_male <- length(male_sbp) 
mean_male <- mean(male_sbp, na.rm = TRUE)
sd_male <- sd(male_sbp, na.rm = TRUE)
se_male <- sd_male / sqrt(n_male)
t_crit_male <- qt(0.975, df = n_male - 1)

# Confidence Interval
ci_male <- c(
  lower = mean_male - t_crit_male * se_male,
  upper = mean_male + t_crit_male * se_male
)

cat("95% CI for male SBP:", round(ci_male[1], 2), "to", round(ci_male[2], 2), "\n")


# Subset: female
female_sbp <- df$sbp[df$sex == 0]

# Summary stats
n_female <- length(female_sbp)
mean_female <- mean(female_sbp, na.rm = TRUE)
sd_female <- sd(female_sbp, na.rm = TRUE)
se_female <- sd_female / sqrt(n_female)
t_crit_female <- qt(0.975, df = n_female - 1)

# Confidence Interval
ci_female <- c(
  lower = mean_female - t_crit_female * se_female,
  upper = mean_female + t_crit_female * se_female
)

cat("95% CI for female SBP:", round(ci_female[1], 2), "to", round(ci_female[2], 2), "\n")

