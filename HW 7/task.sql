-- 1

CREATE VIEW samsBills
AS
SELECT first_name, surname, bill_date, cust_name, bill_total
FROM restStaff s
INNER JOIN restBill b
ON s.staff_no = b.waiter_no
WHERE first_name = "Sam" AND surname = "Pitt";

-- 2

SELECT * 
FROM samsBills 
WHERE bill_total > 400;

-- 3

CREATE VIEW roomTotals AS 
SELECT room_name, SUM(bill_total) AS "total_sum"
FROM restBill b
JOIN restRest_table t
ON b.table_no = t.table_no
GROUP BY room_name;

-- 4

CREATE VIEW teamTotals AS
SELECT CONCAT(first_name, ' ',surname) AS headwaiter_name, SUM(bill_total) AS total_sum
FROM restStaff h
JOIN restStaff w ON h.staff_no = w.headwaiter
JOIN restBill b ON w.staff_no = b.waiter_no
GROUP BY h.first_name, h.surname;