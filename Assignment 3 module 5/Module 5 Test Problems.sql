use intercollegiate_athletic_db;

-- Practice Problem 1 --

select EventNo, DateHeld, Customer.CustNo, CustName, 
	   Facility.FacNo, FacName
from EventRequest, Customer, Facility
where City = 'Boulder'
	and DateHeld between '2018-01-01' and '2018-12-31'
    and EventRequest.CustNo = Customer.CustNo
    and EventRequest.FacNo = Facility.FacNo;

-- Practice Problem 2 --
select Customer.CustNo, CustName, EventNo, DateHeld, 
	   Facility.FacNo, FacName, EstCost/EstAudience as 'Estimated Audience Cost Per Person'
from Customer, EventRequest, Facility
where DateHeld between '2018-01-01' and '2018-12-31'
	and EstCost/EstAudience < 0.2
    and EventRequest.CustNo = Customer.CustNo
    and Facility.FacNo = EventRequest.FacNo;
    
-- Practice Problem 3 --
select Customer.CustNo, CustName, sum(EstCost) as 'Estimated Total Cost Per Event'
from EventRequest inner join Customer
	on EventRequest.CustNo = Customer.CustNo
where Status = 'Approved'
group by Customer.CustNo, CustName;

-- Practcie Problem 4 -- 
insert into Customer
(CustNo, CustName, Address, Internal, Contact, Phone, City, State, Zip)
value ('C9999999', 'Dean Fitzpatrick', '123 Test Street', 'Yes', 'Myself', '1234567', 'Louisville', 'CO', '80028');

-- Practice Problem 5 --
SET SQL_SAFE_UPDATES = 0;

update ResourceTbl
	set Rate = Rate * 1.1
	where ResName = 'Nurse';

SET SQL_SAFE_UPDATES = 1;

-- Practice Problem 6 --
delete from Customer
where CustNo = 'C9999999';



