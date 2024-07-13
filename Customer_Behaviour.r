# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)
library(caret)
library(e1071)
library(MLDataR)

# Load the dataset
df <- read.csv("Customer_Behaviour.csv")

# View the dataset
View(df)

# Pre-processing: Handling missing values
# Check for missing values
sum(is.na(df))
colSums(is.na(df))

# Feature Engineering
# Remove User ID since it does not contribute to the prediction
df$User.ID <- NULL

# Convert Gender and Purchased to factor variables
df$Gender <- as.factor(df$Gender)
df$Purchased <- as.factor(df$Purchased)

# Convert Age and EstimatedSalary to numeric (if they are not already)
df$Age <- as.numeric(df$Age)
df$EstimatedSalary <- as.numeric(df$EstimatedSalary)

# Plotting Purchased distribution
Plot <- df %>%
  ggplot() +
  geom_bar(aes(x = Purchased, fill = Purchased), position = "dodge") +
  scale_fill_manual(values = c("#ff4d6d", "#c77dff")) +
  theme_minimal() +
  theme(plot.title = element_text(size = 15, face = "bold")) +
  labs(y = "Count", title = "Purchased distribution")

# Show the plot
print(Plot)

# Splitting into Train and Test data
training <- createDataPartition(df$Purchased, p = 0.80, list = FALSE)
testing <- df[-training, ]

# Check class of variables
sapply(df, class)

# SVM Algorithm
set.seed(123)
svm_model <- train(Purchased ~ ., data = df, method = "svmRadial")

# Model Evaluation/Hyper Tuning
summary(svm_model)
