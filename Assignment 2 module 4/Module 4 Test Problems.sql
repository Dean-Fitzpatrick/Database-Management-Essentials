select CustNo, CustName, Phone, City
from Customer;

select CustNo, CustName, Phone, City
from Customer where state = 'CO';

select * from EventRequest where EstCost > 4000
order by DateHeld;

select EventNo, DateHeld, Status, EstAudience
from EventRequest 
where (Status = 'Approved' and EstAudience > 9000)
or (Status = 'Pending' and EstAudience > 7000 );

SELECT EventNo, DateHeld, Customer.CustNo, CustName
  FROM EventRequest, Customer
  WHERE City = 'Boulder' 
        AND DateHeld BETWEEN '2018-12-01'AND '2018-12-31'
        AND EventRequest.CustNo = Customer.CustNo;

select PlanNo, avg(NumberFld) As 'Average Number Of Resources Used'
from EventPlanLine
where LocNo = 'L100'
group by PlanNo;

SELECT PlanNo, AVG(NumberFld) AS AvgNumResources, 
               COUNT(*) AS NumEventLines
  FROM EventPlanLine
  WHERE LocNo = 'L100'
  GROUP BY PlanNo
  HAVING COUNT(*) > 1;
