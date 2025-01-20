use projectdb ;
select * from finance_1;
select * from finance_2 ;

# Year wise loan amount Stats
select year(issue_d) as issue_d_year, sum(loan_amnt) as Total_loan_amnt from finance_1
group by issue_d_year
order by issue_d_year;





# Grade and sub grade wise revol_bal
select grade, sub_grade, sum(revol_bal) as Total_revol_bal from finance_1 inner join finance_2
on (finance_1.id = finance_2.id)
group by grade, sub_grade
order by grade, sub_grade;


#  Total Payment for Verified Status Vs Total Payment for Non Verified Status
select  verification_status, sum(f2.Total_Payment) as Total_payment from finance_1  as f1 inner join finance_2 as f2
on (f1.id = f2.id)
group by  f1.verification_status having f1.verification_status in('verified','not verified');





# State wise and month wise loan status
select addr_state,monthname(issue_d) as month,  loan_status from finance_1 inner join finance_2
on(finance_1.id =finance_2.id)
group by addr_state, issue_d,  loan_status order by issue_d;








# Home ownership Vs last payment date stats
select home_ownership, last_pymnt_d, round(sum(last_pymnt_amnt)) as Total_lastamnt from finance_1 inner join finance_2
on (finance_1.id = finance_2.id)
group by home_ownership, last_pymnt_d
order by home_ownership desc, last_pymnt_d desc;
