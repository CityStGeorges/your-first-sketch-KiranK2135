
1. SELECT bill_date, bill_total 
    FROM restBill                 
    WHERE cust_name = 'Bob Crow';

2. SELECT DISTINCT first_name AS 'First Name'
    FROM restStaff
    WHERE surname = 'Smith'
    ORDER BY first_name DESC;

3. SELECT DISTINCT cust_name
    FROM restBill
    WHERE cust_name LIKE "% C%";

4. SELECT DISTINCT first_name, surname
    FROM restStaff
    WHERE headwaiter IS NULL;

5.  SELECT *  
    FROM restBill
    WHERE bill_date > '160200' AND bill_date < '160300';

6. SELECT DISTINCT bill_date
    FROM restBill
    WHERE bill_date > 150100 AND bill_date < 151232
    ORDER BY bill_date;