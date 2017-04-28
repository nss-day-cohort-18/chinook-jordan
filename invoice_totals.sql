SELECT Invoice.Total, Customer.FirstName || ' ' || Customer.LastName 'Customer Full Name', Customer.Country,
Employee.FirstName || ' ' ||  Employee.LastName 'Employee Full Name' 
FROM Invoice, Customer, Employee
WHERE Invoice.CustomerId = Customer.CustomerId
AND Customer.SupportRepId = Employee.EmployeeId