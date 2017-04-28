/* Provide a query that shows total sales made by each sales agent. */

SELECT Employee.FirstName || ' ' || Employee.LastName 'Employee Name', sum(round(Invoice.Total, 0)) 'Total Sales'
FROM Employee, Customer, Invoice
WHERE Customer.SupportRepId = Employee.EmployeeId
AND Invoice.CustomerId = Customer.CustomerId
GROUP BY Employee.EmployeeId