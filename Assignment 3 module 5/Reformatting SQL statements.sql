-- Reformatting SQL Statements with Errors And Poor Formatting -- 

-- Reformatting SQL Statements Problem 1 --

select EventRequest.EventNo, DateHeld, Status, EstCost
from EventRequest, Employee, Facility, EventPlan
where EstAudience > 5000
	  and EventPlan.EmpNo = Employee.EmpNo
      and EventRequest.FacNo = Facility.FacNo
      and FacName = 'Football Stadium'
      and EmpName = 'Mary Manager';
      
-- Reformatting SQL Statements Problem 2 --
select distinct eventrequest.eventno, dateheld, Status, estcost
from eventrequest, eventplan
where estaudience > 4000
  and eventplan.eventno = eventrequest.eventno 
group by eventrequest.eventno, dateheld, status, estcost;

-- Reformatting SQL Statements Problem 3 --
select distinct eventrequest.eventno, dateheld, status, estcost
from eventrequest, employee, facility, eventplan
where estaudience > 5000
  and eventplan.empno = employee.empno 
  and eventrequest.facno = facility.facno
  and eventplan.eventno = eventrequest.eventno 
  and facname = 'Football stadium';
  
-- Reformatting SQL Statements Problem 4 --
select distinct eventno, dateheld, status, estcost
from eventrequest, employee, eventplan
Where estaudience BETWEeN 5000 AND 10000  -- Syntax Error here as the Between KEY WORD is mispelled -- 
  and eventplan.empno = employee.empno 
  and eventrequest.eventno = eventplan.eventno
  and empname = 'Mary Manager';

-- Reformatting SQL Statements Problem 5 --
      select eventplan.planno, lineno, resname, 
numberfld, timestart, timeend   -- Misalignment of Information here is hard to read -- 
    from eventrequest, facility, eventplan, 
eventplanline, resourcetbl   -- Hard to interpret what tables are being used due to the misalignment --
     where estaudience = '10000'
and eventplan.planno = 
eventplanline.planno and eventrequest.facno 
= facility.facno  -- Cross product join is hard to read as it is spread across multiple lines and is misaligned -- 
      and facname = 
'Basketball arena' and 
   eventplanline.resno = resourcetbl.resno
      and eventrequest.eventno = eventplan.eventno; -- Cross product join is hard to read as it is spread across multiple lines and is misaligned -- 
      
-- Fixed SQL Statement for problem 5 -- 
select Eventplan.planno, lineno, resname,
       numberfld, timestart, timeend
from eventrequest, facility, eventplan, eventplanline, resourcetbl
where estaudience = 10000
	  and eventplan.planno = eventplanline.planno
      and eventrequest.facno = facility.facno 
      and facname = 'Basketball Arena'
      and eventplanline.resno = resourcetbl.resno
      and eventrequest.eventno = eventplan.eventno;


