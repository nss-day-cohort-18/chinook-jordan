/* Which sales agent made the most in sales in 2009? */

SELECT Employee.FirstName || ' ' || Employee.LastName 'Employee Name', sum(round(Invoice.Total, 0)) 'Total Sales 2009'
FROM Employee, Customer, Invoice
WHERE Invoice.CustomerId = Customer.CustomerId
AND Customer.SupportRepId = Employee.EmployeeId
AND Invoice.InvoiceDate BETWEEN '2009-01-01 00:00:00' AND '2009-12-31 00:00:00'
GROUP BY Employee.EmployeeId
ORDER BY Invoice.Total DESC

/* Need to come back to this one */