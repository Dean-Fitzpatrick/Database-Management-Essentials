USE Intercollegiate_Athletic_DB;

-- Assignment Problem 1 --
select distinct City, State, Zip
from Customer;

-- Assignment Problem 2 --
select EmpName, Department, Phone, Email
from Employee 
where Phone like '3-%';

-- Assignment Problem 3 --
select * from ResourceTbl
where rate between '10.00' and '20.00'
order by rate;

-- Assignment Problem 4 --
select EventNo, DateAuth, Status from EventRequest
where DateAuth between '2018-07-01' and '2018-07-31'
	and Status = 'Approved' or Status = 'Denied';

-- Assignment Problem 5 --  
select LocNo, LocName, Facility.FacNo, Facility.FacName
from Location , Facility
where FacName = 'Basketball Arena'
	and Location.FacNo = Facility.FacNo;
    
-- Assignment Problem 6  -- 
select PlanNo, count(LineNo) as 'Number Of Event Plan Lines', 
			   sum(NumberFld) as 'Total Number Of Resources Assigned'
from EventPlanLine
  group by planNo
  having COUNT(*) >= 1;