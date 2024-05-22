PROC IMPORT DATAFILE='/home/u63313755/statystyka_w_sas/projekt_dodatkowy/WA_Fn-UseC_-HR-Employee-Attrition.xlsx'
	DBMS=XLSX
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;

/* Method 1 */

proc logistic data=WORK.IMPORT;
    class 
    	BusinessTravel
    	Department
    	EducationField
    	Gender
    	JobRole
    	MaritalStatus
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	DailyRate
    	DistanceFromHome
    	Education
    	EnvironmentSatisfaction
    	HourlyRate
    	JobInvolvement
    	JobLevel
    	JobSatisfaction
    	MonthlyIncome
    	MonthlyRate
    	NumCompaniesWorked
    	PercentSalaryHike
    	PerformanceRating
    	RelationshipSatisfaction
    	StockOptionLevel
    	TotalWorkingYears
    	TrainingTimesLastYear
    	WorkLifeBalance
    	YearsAtCompany
    	YearsInCurrentRole
    	YearsSinceLastPromotion
    	YearsSinceLastPromotion
    	;
run;

proc logistic data=WORK.IMPORT;
    class 
    	BusinessTravel
    	Department
    	EducationField
    	Gender
    	JobRole
    	MaritalStatus
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	DailyRate
    	DistanceFromHome
    	EnvironmentSatisfaction
    	HourlyRate
    	JobInvolvement
    	JobLevel
    	JobSatisfaction
    	MonthlyIncome
    	MonthlyRate
    	NumCompaniesWorked
    	PercentSalaryHike
    	PerformanceRating
    	RelationshipSatisfaction
    	StockOptionLevel
    	TotalWorkingYears
    	TrainingTimesLastYear
    	WorkLifeBalance
    	YearsAtCompany
    	YearsInCurrentRole
    	YearsSinceLastPromotion
    	YearsSinceLastPromotion
    	;
run;

proc logistic data=WORK.IMPORT;
    class 
    	BusinessTravel
    	Department
    	EducationField
    	Gender
    	JobRole
    	MaritalStatus
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	DailyRate
    	DistanceFromHome
    	EnvironmentSatisfaction
    	JobInvolvement
    	JobLevel
    	JobSatisfaction
    	MonthlyIncome
    	MonthlyRate
    	NumCompaniesWorked
    	PercentSalaryHike
    	PerformanceRating
    	RelationshipSatisfaction
    	StockOptionLevel
    	TotalWorkingYears
    	TrainingTimesLastYear
    	WorkLifeBalance
    	YearsAtCompany
    	YearsInCurrentRole
    	YearsSinceLastPromotion
    	YearsSinceLastPromotion
    	;
run;

proc logistic data=WORK.IMPORT;
    class 
    	BusinessTravel
    	Department
    	EducationField
    	Gender
    	JobRole
    	MaritalStatus
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	DailyRate
    	DistanceFromHome
    	EnvironmentSatisfaction
    	JobInvolvement
    	JobLevel
    	JobSatisfaction
    	MonthlyIncome
    	NumCompaniesWorked
    	PercentSalaryHike
    	PerformanceRating
    	RelationshipSatisfaction
    	StockOptionLevel
    	TotalWorkingYears
    	TrainingTimesLastYear
    	WorkLifeBalance
    	YearsAtCompany
    	YearsInCurrentRole
    	YearsSinceLastPromotion
    	YearsSinceLastPromotion
    	;
run;

proc logistic data=WORK.IMPORT;
    class 
    	BusinessTravel
    	Department
    	EducationField
    	Gender
    	JobRole
    	MaritalStatus
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	DailyRate
    	DistanceFromHome
    	EnvironmentSatisfaction
    	JobInvolvement
    	JobLevel
    	JobSatisfaction
    	NumCompaniesWorked
    	PercentSalaryHike
    	PerformanceRating
    	RelationshipSatisfaction
    	StockOptionLevel
    	TotalWorkingYears
    	TrainingTimesLastYear
    	WorkLifeBalance
    	YearsAtCompany
    	YearsInCurrentRole
    	YearsSinceLastPromotion
    	YearsSinceLastPromotion
    	;
run;

proc logistic data=WORK.IMPORT;
    class 
    	BusinessTravel
    	Department
    	EducationField
    	Gender
    	JobRole
    	MaritalStatus
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	DailyRate
    	DistanceFromHome
    	EnvironmentSatisfaction
    	JobInvolvement
    	JobLevel
    	JobSatisfaction
    	NumCompaniesWorked
    	PercentSalaryHike
    	PerformanceRating
    	RelationshipSatisfaction
    	StockOptionLevel
    	TotalWorkingYears
    	TrainingTimesLastYear
    	WorkLifeBalance
    	YearsInCurrentRole
    	YearsSinceLastPromotion
    	YearsSinceLastPromotion
    	;
run;

proc logistic data=WORK.IMPORT;
    class 
    	BusinessTravel
    	Department
    	EducationField
    	Gender
    	JobRole
    	MaritalStatus
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	DailyRate
    	DistanceFromHome
    	EnvironmentSatisfaction
    	JobInvolvement
    	JobLevel
    	JobSatisfaction
    	NumCompaniesWorked
    	PercentSalaryHike
    	RelationshipSatisfaction
    	StockOptionLevel
    	TotalWorkingYears
    	TrainingTimesLastYear
    	WorkLifeBalance
    	YearsInCurrentRole
    	YearsSinceLastPromotion
    	YearsSinceLastPromotion
    	;
run;

proc logistic data=WORK.IMPORT;
    class 
    	BusinessTravel
    	Department
    	EducationField
    	Gender
    	JobRole
    	MaritalStatus
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	DailyRate
    	DistanceFromHome
    	EnvironmentSatisfaction
    	JobInvolvement
    	JobLevel
    	JobSatisfaction
    	NumCompaniesWorked
    	RelationshipSatisfaction
    	StockOptionLevel
    	TotalWorkingYears
    	TrainingTimesLastYear
    	WorkLifeBalance
    	YearsInCurrentRole
    	YearsSinceLastPromotion
    	YearsSinceLastPromotion
    	;
run;

proc logistic data=WORK.IMPORT;
    class 
    	BusinessTravel
    	Department
    	EducationField
    	Gender
    	JobRole
    	MaritalStatus
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	DailyRate
    	DistanceFromHome
    	EnvironmentSatisfaction
    	JobInvolvement
    	JobLevel
    	JobSatisfaction
    	NumCompaniesWorked
    	StockOptionLevel
    	TrainingTimesLastYear
    	WorkLifeBalance
    	YearsInCurrentRole
    	YearsSinceLastPromotion
    	YearsSinceLastPromotion
    	;
run;

proc logistic data=WORK.IMPORT;
    class 
    	BusinessTravel
    	Department
    	EducationField
    	Gender
    	JobRole
    	MaritalStatus
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	DailyRate
    	DistanceFromHome
    	EnvironmentSatisfaction
    	JobInvolvement
    	JobLevel
    	JobSatisfaction
    	NumCompaniesWorked
    	StockOptionLevel
    	TrainingTimesLastYear
    	YearsInCurrentRole
    	YearsSinceLastPromotion
    	YearsSinceLastPromotion
    	;
run;

proc logistic data=WORK.IMPORT;
    class 
    	BusinessTravel
    	Department
    	EducationField
    	Gender
    	JobRole
    	MaritalStatus
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	DistanceFromHome
    	EnvironmentSatisfaction
    	JobInvolvement
    	JobLevel
    	JobSatisfaction
    	NumCompaniesWorked
    	StockOptionLevel
    	TrainingTimesLastYear
    	YearsInCurrentRole
    	YearsSinceLastPromotion
    	YearsSinceLastPromotion
    	;
run;

/* Method 2 */

proc logistic data=WORK.IMPORT;
    class 
    	BusinessTravel
    	Gender
    	JobRole
    	MaritalStatus
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	DistanceFromHome
    	JobSatisfaction
    	MonthlyIncome
    	;
run;

proc logistic data=WORK.IMPORT;
    class 
    	OverTime
    	;
    model attrition(event='Yes') = 
    	DistanceFromHome
    	StockOptionLevel
    	MonthlyIncome
    	;
run;

proc logistic data=WORK.IMPORT;
    class 
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	PerformanceRating
		JobInvolvement 
    	;
run;

