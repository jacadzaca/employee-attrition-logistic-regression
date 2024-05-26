# Voluntary employee attrition model

## Introduction
Voluntary employee attrition takes place when an employee chooses to leave a company. Companies
might choose to implement a system that minimize employee attrition, because there are certain
costs associated with it. Such system can be implemented using a simple logistic regression, i.e
a mathematical model that given some information about an employee estimates the likelihood of
the employee leaving the company. 

## Logistic regressions fundamentals
Let P be the probability that given employee experiences attrition. When using logistics
regression we estimate the natural logarithm of odds (i.e the quotient of P and 1 - P)
called logit using a linear regression. 

## Data-set's overview
The data-set consists of 1470 records of data about present and past employees
of a certain corporation. Each record is described by the following columns:
 - Age
 - DailyRate
 - DistanceFromHome
 - Education - whether the employee has a high school, bachelor or a PhD
 - EnvironmentSatisfaction
 - HourlyRate
 - JobInvolvement
 - JobLevel
 - JobSatisfaction
 - MonthlyIncome
 - MonthlyRate
 - NumCompaniesWorked
 - PercentSalaryHike
 - PerformanceRating
 - RelationshipSatisfaction - satisfaction with their relationship with there direct superior
 - StockOptionLevel
 - TotalWorkingYears
 - TrainingTimesLastYear
 - WorkLifeBalance - level of reported work-life balance
 - YearsAtCompany
 - YearsInCurrentRole
 - YearsSinceLastPromotion
 - BusinessTravel - how often the employee travels for business
 - Department
 - EducationField
 - Gender
 - JobRole - whether the employee is a sales exec, technician, R&D worker or a director
 - MaritalStatus - whether the employee is single, married or divorced
 - OverTime - whether the employee did overtime past year


## Building the model
We build two models using the following method:

1. include all of the variables as predictors, remove statistically insignificant (we choose a 5% significance level) predictors one
by one (starting with the one with biggest p-value), until a model with only statistically 
significant predictors is left.
2. try following combinations of predictors:
    - Age, BusinessTravel, Gender, DistanceFromHome, JobSatisfaction, MonthlyIncome, OverTime (stereotypically, these factors are most crucial for employees)
    - MonthlyIncome, OverTime, StockOptionLevel, DistanceFromHome (these factors should be most crucial from 'homo economicus' viewpoint)
    - Age, PerformanceRating, OverTime, JobInvolvement (stereotypical factors taken into consideration when firing someone)
If need be, remove statistically insignificant predicotrs.

To compare the models, we are going to use only 70% of our data-set for training, and use the other 30%
for validation. The model that will generate fewest incorrect predictions when applied to the validation
subset will be chosen as the correct one.

The following models were generated using the described methods:

### Model 1

| Predictor            | Coefficient estimate |  p-value |
|----------------------|----------------------|----------|
| Intercept            |  3.0493	          | <.0001   |
| Age                  | -0.0345              | 0.0058   |
| DistanceFromHome	   | 0.0341               | 0.0017   |
| EnvironmentSatisfact | -0.2166              | 0.0097   |
| JobInvolvement	   | -0.4778              | 0.0001   |
| JobLevel             | -0.5207              | <.0001   |
| JobSatisfaction      | -0.3369              | <.0001   |
| NumCompaniesWorked   |  0.1210              | 0.0015   |
| StockOptionLevel     | -0.5773              | <.0001   |
| YearsInCurrentRole   | -0.1078              | 0.0031   |
| YearsSinceLastPromot | 0.1603               | <.0001   |


### Model 2a
| Predictor            | Coefficient estimate |  p-value |
|----------------------|----------------------|----------|
| Intercept	           | 0.3259               | 0.4348   |
| Age                  | -0.0305              | 0.0069   |
| DistanceFromHome	   | 0.0294	              |	0.0050   |
| JobSatisfaction	   | -0.2103              | 0.0069   |
| MonthlyIncome	       | -0.00011		      | 0.0002   |  

### Model 2b
| Predictor            | Coefficient estimate |  p-value |
|----------------------|----------------------|----------|
| Intercept	           | -0.8541	          | <.0001   |
| DistanceFromHome	   | 0.0312               | 0.0029   |
| StockOptionLevel	   | -0.4684              | <.0001   |
| MonthlyIncome	       | -0.00014             | <.0001   |

### Model 2c

| Predictor            | Coefficient estimate |  p-value |
|----------------------|----------------------|----------|
| Intercept	           | 1.2937	              | 0.0066   |
| Age                  | -0.0530              | <.0001   |
| JobInvolvement       | -0.3999	          | 0.0007   |


We notice that in case of model 2a the intercept is not statistically
significant. This means that this model thinks that there is no base
probability of attrition simply by the fact of being employed at the firm.

## Choosing the model

Running each model against the validation data-set gave following results:

| Model    | # of missclasifications          | % of missclasifications |
|----------|----------------------------------|-------------------------|
| Model 1  |           64                     |      15                 |
| Model 2a |           71                     |      16                 | 
| Model 2b |           71                     |      16                 |
| Model 2c |           71                     |      16                 |

## Interpretation

### Percentage changes of odds given a unit/category change 

| Predcitor            | % change estimate | 95% lower band % change | 95% upper band % change |
|----------------------|-------------------|-------------------------|-------------------------|
| Age	               | -3.4              | -5.7                    | -1                      |
| DistanceFromHome	   | 3.5  	           | 1.3                     | 5.7                     |
| EnvironmentSatisfact | -19.5	           | -31.7                   | -5.1                    |
| JobInvolvement       | -39.8	           | -51.4                   | -20.8                   |
| JobLevel	           | -40.6             | -53.6                   | -23.9                   |
| JobSatisfaction      | -28.6	           | -39.1                   | -16.3                   |
| NumCompaniesWorked   | 12.9 	           | 4.8                     | 21.6                    |
| StockOptionLevel	   | -43.9	           | -56.3                   | -27.9                   |
| YearsInCurrentRole   | -10.2	           | -16.4                   | -3.6                    |
| YearsSinceLastPromot | 17.4              | 9.1                     | 26.3                    |

The top three factors that contribute to employee attrition are the number of companies they have
worked in, the number of years since their last promotion and their age. Moreover, the more the employee
is given stuck options, the higher level of involvement they feel and the higher their position
in corporate hierarchy the less likely they are to experience attrition. However, the estimates'
confidence intervals are *rather* wide, so the factors exact order of importance cannot be determined.
Increasing the sample size and/or grouping the observations into some groups (e.g. by department, by
manager) is advised so as to incorporate information better and possibly decrees variance and in turn
shrunken the confidence interval, improve the odds change estimate.

## Recommendations

We suggest diligent screening candidates on the basis of number of past companies they have worked in,
for example, the quotient of companies the candidate have worked in and their age could be used to gauge
the employees "propensity to jump companies". Moreover, we consider ensuring high job satisfaction (for example, by
providing a generous work benefits plan) as critical. Lastly, more widespread stock compensation should decrease
employee attrition.

The developed model can be used to estimate current employees' odds of attrition. The recommended actions can be
taken only if an employee that is considered crucial to the operations is classified by the model as endangered
by attrition or on a more widespread basis, for example as a reward for staying with the company for a year, two etc,
since being 'stuck' in a role is also contributing to employees' attrition.

