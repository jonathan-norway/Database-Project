-- TOTAL BILLING PER SEMESTER --
SELECT billing.*, tuitiontable.TuitionFees, ROUND((TuitionFees-Paid),2) as Outstanding
FROM BILLING
LEFT JOIN tuitiontable
ON billing.dDate=tuitiontable.dDate;

-- SHOW TOTAL OUTSTANDING BALANCE -- 
SELECT Billing.StudentID, ROUND((SUM(Tuitiontable.tuitionfees) - Sum(billing.Paid)),2) AS OutstandingTotal
FROM BILLING
LEFT JOIN Tuitiontable
ON BILLING.dDate = Tuitiontable.dDate
GROUP BY StudentID
ORDER BY StudentID;