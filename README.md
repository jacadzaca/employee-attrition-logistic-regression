# Voluntary employee attrition model

## Introduction
Voluntary employee attrition takes place when an employee chooses to leave a company. Companies
might choose to implement a system that minimize employee attrition, because there are certain
costs associated with it. Such system can be implemented using a simple logistic regression, i.e
a mathematical model that given some information about an employee estimates the likelihood of
the employee leaving the company. 

## Logistic regressions fundamentals


## Data-set's overview


## Building the model
We build two models using the following method:

1. include all of the variables as predictors, remove statistically insignificant predictors one
by one (starting with the one with biggest p-value), until a model with only statistically 
significant predictors is left.
2. try following combinations of predictors:
    - Age, BusinessTravel, Gender, DistanceFromHome, JobSatisfaction, MonthlyIncome, OverTime (stereotypically, these factors are most crucial for employees)
    - MonthlyIncome, OverTime, StockOptionLevel, DistanceFromHome (these factors should be most crucial from 'homo economicus' viewpoint)
    - Age, PerformanceRating, OverTime, JobInvolvement (stereotypical factors taken into consideration when firing someone)

To compare the models, we are going to use only 70% of our data-set for traning, and use the other 30%
for validation. The model that will generate fewer incorrect predictions when applied to the training
set will be chosen as the correct one.
