# Setup -------------------------------------------------------------------
pks <- c("caret", "dplyr", "tidyr", "ggplot2")
sapply(pks, require, character.only = T)
rm(pks)


# Read Data ---------------------------------------------------------------

training <- read.csv("pml-training.csv")
testing <- read.csv("pml-testing.csv")

testing[,c("user_name", "problem_id")]

# non NAs in testing
tidy_testing <- testing[,as.vector(!colSums(is.na(testing))>0)]
tidy_training <- training[,as.vector(!colSums(is.na(testing))>0)]


colnames(tidy_testing)


modelFit <- train(classe ~ ., data = tidy_training[,-c(1,3:5)], method = "glm")

# classe variable for manner in which did exercise

c("user_name", "classe")
c("roll", "pitch", "yaw") # take into account misspellings (i.e. kurtosis 'picth)
c("belt", "forearm", "arm", "dumbell")
c("min" ,"max", "avg", "stddev")

"magnet"
"gyros", "accel", 

