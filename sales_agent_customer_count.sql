/*  Provide a query that shows the count of customers assigned to each sales agent. */
SELECT Customer.SupportRepId 'Support Rep Id.', count(Customer.CustomerId) '# of Customers'
FROM Customer
GROUP BY Customer.SupportRepId