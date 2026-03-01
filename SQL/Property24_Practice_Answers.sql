--1. Display all properties in the database.
select *
from property_details;

--2. Show only the CITY, PROVINCE, and PROPERTY_PRICE columns
select city,province, property_price
from property_details

--3. List all distinct provinces in the table.
select distinct province
from property_details

--4. Find all properties located in Gauteng.
select *
from property_details
where province = 'Gauteng'

--5. Show properties priced under R1,500,000.
select *
from property_details
where PROPERTY_PRICE < 1500000
order by PROPERTY_PRICE desc

--6. List properties with more than 3 bedrooms.
select *
from property_details
where BEDROOMS > 3

--7. Find properties with parking for at least 2 cars.
select *
from property_details
where PARKING >=  2

--8. Show properties where the monthly repayment is greater than R25,000.
select *
from property_details
where Monthly_Repayment >  25000

--9. Show all properties ordered by property price from highest to lowest.
select *
from property_details
order by PROPERTY_PRICE desc

--10. List properties ordered by floor size from smallest to largest.
select *
from property_details
order by FLOOR_SIZE asc

--11. Show Gauteng properties ordered by monthly repayment.
select *
from property_details
where province = 'Gauteng'
order by Monthly_Repayment 

--12. Find Western Cape properties priced below R3,000,000
select *
from property_details
where province = 'Western Cape'
and property_price < 3000000
order by property_price desc

--13. Show KwaZulu-Natal properties with 3 or more bedrooms.
select *
from property_details
where province = 'KwaZulu-Natal'
and BEDROOMS >= 3

--14. Find properties in Limpopo or Free State ordered by property price.

select *
from property_details
where province in ('Limpopo',  'Free State')
order by PROPERTY_PRICE

--15. Show the 10 most expensive properties.
select top 10 *
from property_details
order by PROPERTY_PRICE desc

--16. Show the 5 cheapest properties
select top 5 *
from property_details
order by PROPERTY_PRICE asc

--17. Show the top 10 properties with the largest floor size
select top 10 *
from property_details
order by FLOOR_SIZE desc

--18. Which province appears to have the highest priced properties?
select PROVINCE, max(PROPERTY_PRICE) as max_price
from property_details
group by PROVINCE
order by max_price desc

--19. Which cities appear to have the most affordable housing?
select city, min(PROPERTY_PRICE) as min_price
from property_details
group by CITY
order by min_price asc

--20. What minimum income is typically required for properties priced above R4,000,000
select Min_Gross_Monthly_Income, min(Min_Gross_Monthly_Income) as Min_Gross_Monthly_Income
from property_details
where PROPERTY_PRICE > 4000000

    







