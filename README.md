# Customer Behavior Analysis to Support Decision-Making

## Overview
This project analyzes customer behavior data to derive insights that can support decision-making in marketing, sales, and customer relationship management.

## Dataset
The dataset used for this analysis can be found on Kaggle: [Customer Behaviour Dataset](https://www.kaggle.com/datasets/denisadutca/customer-behaviour/).

## Analysis Steps
1. **Data Loading and Exploration:**
   - Loaded the dataset using `read.csv`.
   - Explored the structure and summary statistics of the dataset.
   - Handled missing values and performed feature engineering.

2. **Data Visualization:**
   - Plotted distributions and relationships using `ggplot2`.

3. **Model Building:**
   - Applied Support Vector Machine (SVM) for predictive modeling using the `caret` package.
   - Split data into training and testing sets.

4. **Model Evaluation:**
   - Evaluated the SVM model performance using cross-validation and hyperparameter tuning.

## Results
- The SVM model (radial kernel) was trained to predict customer purchasing behavior based on demographic and behavioral features.
- Model performance metrics (accuracy, precision, recall) were analyzed to assess predictive power.

## Usage
- Clone the repository.
- Ensure R and necessary libraries (`readr`, `dplyr`, `ggplot2`, `caret`, `e1071`, `MLDataR`) are installed.
- Update the file path in the R script (`Customer_Behaviour.csv` location).
- Run the R script to reproduce the analysis.

