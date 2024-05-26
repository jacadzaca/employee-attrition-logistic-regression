PROC IMPORT REPLACE DATAFILE='/home/u63313755/statystyka_w_sas/projekt_dodatkowy/WA_Fn-UseC_-HR-Employee-Attrition.xlsx'
	DBMS=XLSX
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

proc sort data=WORK.IMPORT;
	BY attrition;
run;


proc surveyselect data=WORK.IMPORT out=splitdata samprate=0.7 outall;
    strata attrition;
run;

data training validation;
    set splitdata;
    if selected then output training;
    else output validation;
run;

proc logistic data=training outmodel=method1;
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
    	YearsInCurrentRole
    	YearsSinceLastPromotion
    	YearsSinceLastPromotion
    	;
run;

/* Method 1 */

proc logistic data=training;
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

proc logistic data=training;
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

proc logistic data=training;
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

proc logistic data=training;
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

proc logistic data=training;
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

proc logistic data=training;
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

proc logistic data=training;
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

proc logistic data=training;
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

proc logistic data=training;
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

proc logistic data=training;
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

proc logistic data=training outmodel=method1;
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

proc logistic data=training outmodel=method2_1;
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

proc logistic data=training outmodel=method2_2;
    class 
    	OverTime
    	;
    model attrition(event='Yes') = 
    	DistanceFromHome
    	StockOptionLevel
    	MonthlyIncome
    	;
run;

proc logistic data=training outmodel=method2_3;
    class 
    	OverTime
    	;
    model attrition(event='Yes') = 
    	Age
    	PerformanceRating
		JobInvolvement 
    	;
run;

proc logistic inmodel=method1;
    score data=validation out=predicted_validity;
run;

data missmatches;
	set predicted_validity;
	if (P_Yes > P_No and Attrition = 'Yes') then
		mismatch = 'No';
	else if (P_No > P_Yes and Attrition = 'No') then
		mismatch = 'No';
	else
		mismatch = 'Yes';
run;

proc summary data=missmatches nway print;
	class mismatch;
run;

proc logistic inmodel=method2_1;
    score data=validation out=predicted_validity;
run;

data missmatches;
	set predicted_validity;
	if (P_Yes > P_No and Attrition = 'Yes') then
		mismatch = 'No';
	else if (P_No > P_Yes and Attrition = 'No') then
		mismatch = 'No';
	else
		mismatch = 'Yes';
run;

proc summary data=missmatches nway print;
	class mismatch;
run;

proc logistic inmodel=method2_2;
    score data=validation out=predicted_validity;
run;

data missmatches;
	set predicted_validity;
	if (P_Yes > P_No and Attrition = 'Yes') then
		mismatch = 'No';
	else if (P_No > P_Yes and Attrition = 'No') then
		mismatch = 'No';
	else
		mismatch = 'Yes';
run;

proc summary data=missmatches nway print;
	class mismatch;
run;

proc logistic inmodel=method2_3;
    score data=validation out=predicted_validity;
run;

data missmatches;
	set predicted_validity;
	if (P_Yes > P_No and Attrition = 'Yes') then
		mismatch = 'No';
	else if (P_No > P_Yes and Attrition = 'No') then
		mismatch = 'No';
	else
		mismatch = 'Yes';
run;

proc summary data=missmatches nway print;
	class mismatch;
run;
