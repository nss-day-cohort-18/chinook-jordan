SELECT Invoice.InvoiceId 'Invoice Id', Employee.FirstName || ' ' || Employee.LastName 'Full Name'
FROM Invoice, Employee, Customer
WHERE Employee.EmployeeId IS Customer.SupportRepId
AND Invoice.CustomerId = Customer.CustomerId
ORDER BY Invoice.InvoiceId ASC