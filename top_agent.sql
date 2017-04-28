/* Which sales agent made the most in sales over all? */

SELECT Employee.FirstName || ' ' || Employee.LastName 'Employee Name', sum(round(Invoice.Total, 0)) 'Total Sales'
FROM Employee, Customer, Invoice
WHERE Customer.SupportRepId = Employee.EmployeeId
AND Invoice.CustomerId = Customer.CustomerId
GROUP BY Employee.EmployeeId
ORDER BY max(Invoice.Total) ASC
LIMIT 1