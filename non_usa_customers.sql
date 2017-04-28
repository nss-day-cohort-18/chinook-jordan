SELECT Customer.CustomerId, Customer.FirstName || ' ' || Customer.LastName AS 'Full Name', Customer.Country
FROM Customer
WHERE Customer.Country IS NOT 'USA'