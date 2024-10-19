use chioma
go

select * from employee
--1.HIGHEST MONTHLY INCOME EARNED BY EMPLOYEES IN DIFFERENT DEPARTMENTS
select department, max(monthly_income) from employee
group by Department

--2.FEMALES IN DIFFERENT DEPARTMENT 
select department, gender from employee
where gender = 'female'
order by Department

--3. MALES IN DIFFERNT DEPARMENT
select department, gender from employee
where gender = 'male'
order by Department

--4. AGE OF OLDEST EMPLOYEE
select max(age) AGE, Department from employee
group by Department

--5. THE HIGHEST MONTHLY RATE PAID  BY JOBLEVEL
select max(Monthly_rate) MONTHLY_RATE, job_level from employee
group by Job_level  

--6. HIGHEST PAID EMPLOYEE
select age, Attrition, Business_travel, Education_field, gender,job_role,Job_level, marital_status,department, monthly_income from employee
where Monthly_income = (select max(monthly_income) from employee)

--7. OLDEST EMPLOYEE BY NUMBER OF YEARS SPENT IN COMPANY    
select Job_role, AGE, department,gender, education_field, Years_at_company from employee
where Years_at_company = (select max(years_at_company) from employee)

--8. NUMBER OF YEARS SPENT BY EMPLOYEE IN CURRENT ROLE
select Job_role,Years_In_current_role from employee

--9. TOTAL MONTHLY INCOME PAID TO DIFFERNT GENDER
select gender,sum(monthly_income) MONTHLY_INCOME  from employee
group by Gender
 
--10. EMPLOYEES THAT HAS WORKED FOR MORE THAN 30 YEARS
select age, gender, department, total_working_years from employee
where Total_working_years > 30
order by Total_working_years desc

--11. MALE EMPLOYEES THAT TRAVEL FREQUENTLY
select age, attrition, business_travel, Gender department from employee
where gender = 'male' and Business_travel = 'travel_frequently'

--12. FEMALE EMPLOYEES THAT TRAVEL RARELY
select department, job_role, business_travel, gender from employee
where gender ='female' and Business_travel = 'travel_rarely'

--13. EMPLOYEES THAT DO NOT TRAVEL AT ALL
select attrition, Education_field, Years_at_company, Business_travel from employee
where Business_travel = 'non-travel'

--14. LEAST PAID EMPLOYEE
select Department, age, Attrition, Job_role, monthly_income from employee
where Monthly_income = (select max(monthly_income) from employee)


