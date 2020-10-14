# -----------------------------------------------
# Naming our data and choosing data set
cov.df=read.csv(file.choose())
# first 6 lines of the data
head(cov.df)
# Verifying data frame
View(cov.df)
# --------------------------------------------
par(mfrow=c(2,2))
# Explanatory vs Response
# X = Mortality Rate, Y = Medicaid Score
plot(cov.df$Mortality.Rate, cov.df$Medicaid.Score, 
     xlab="Mortality Rate", ylab="Medicaid Score")
# X = Mortality Rate, Y = Eligibility and Enrollment Rank
plot(cov.df$Mortality.Rate, cov.df$E.E.Rank, 
     xlab="Mortality Rate", ylab="Elig and Enro Rank")
# X = Mortality Rate, Y = Mortality Rate
plot(cov.df$Mortality.Rate, cov.df$Tested, 
     xlab="Mortality Rate", ylab="# of Tests")
# X = Mortality Rate, Y = Testing Rate
plot(cov.df$Mortality.Rate, cov.df$Testing.Rate, 
     xlab="Mortality Rate", ylab="Testing Rate")
# --------------------------------------------
par(mfrow=c(1,1))
# 
plot(cov.df$Mortality.Rate, cov.df$Confirm, 
     xlab="Mortality Rate", ylab="Confirmed Cases")
#
plot(cov.df$Confirm, cov.df$Testing.Rate, 
     xlab="Confirmed Cases", ylab="Testing Rate")
# ----------------------------------------------