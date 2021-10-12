-- SELECT Statement Problems -- 

-- Assignment Problem 1 (Select Satements) --
select EventRequest.EventNo, EventRequest.DateHeld, 
	   count(PlanNo) as 'Number Of Event Plans'
from EventRequest, EventPlan
where dateHeld between '2018-12-01' and '2018-12-31' 
	   and EventRequest.EventNo = EventPlan.EventNo
having count(*) > 1;

-- Assignment Problem 2 (Select Satements) --
select PlanNo, EventRequest.EventNo, WorkDate, Activity, Facility.FacName
from EventPlan, EventRequest, Facility
where FacName = 'Basketball Arena'
	 and WorkDate between '2018-12-01' and '2018-12-31'
     and EventRequest.EventNo = EventPlan.EventNo
     and EventRequest.FacNo = Facility.FacNo;

-- Assignment Problem 3 (Select Satements) --
select distinct EventRequest.EventNo, EventRequest.DateHeld, Status, EstCost,
	   Facility.FacName, Employee.EmpName, eventPlan.EmpNo
from EventRequest, Facility, Employee, EventPlan
where FacName = 'Basketball Arena'
	  and DateHeld between '2018-10-01' and '2018-12-31'
      and EmpName = 'Mary Manager'
      and EventRequest.FacNo = Facility.FacNo
      and Employee.EmpNo = EventPlan.EmpNo;
      

-- Assignment Problem 4 (Select Satements) --
select EventPlan.PlanNo, EventPlanLine.LineNo, ResourceTbl.ResName, 
	   EventPlanLine.ResNo, TimeStart, TimeEnd, Facility.FacName, 
       EventPlan.WorkDate, Activity
from EventPlanLine, ResourceTbl, Eventplan, Facility
where FacName = 'Basketball Arena'
      and Activity = 'Operation'
	  and WorkDate between '2018-10-01' and '2018-12-31' 
      and EventPlanLine.ResNo = ResourceTbl.ResNo
      and EventPlanLine.Planno = EventPlan.PlanNo;
      
-- Database Modifcation Problems -- 

-- Assignment Problem 1 (Database Modifcation Satements) --
insert into Facility
(FacNo, FacName)
values ('F104', 'Swimming Pool');

-- Assignment Problem 2 (Database Modifcation Satements) --
insert into Location 
(LocNo, FacNo, LocName)
values ('L107', 'F104' , 'Door');

-- Assignment Problem 3 (Database Modifcation Satements) --
insert into Location
(LocNo, FacNo, LocName)
values ('L108', 'F104', 'Locker Room');

-- Assignment Problem 4 (Database Modifcation Satements) --
SET SQL_SAFE_UPDATES = 0;

update Location
set LocName = 'Door'
where LocNo = 'L107';

SET SQL_SAFE_UPDATES = 1;

-- Assignment Problem 5 (Database Modifcation Satements) --
delete from Location
where LocNo = 'L108';
