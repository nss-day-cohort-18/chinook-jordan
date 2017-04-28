/* Provide a query that shows the # of invoices per country. HINT: GROUP BY */
SELECT Invoice.InvoiceId, Customer.Country
FROM Invoice, Customer
WHERE Invoice.CustomerId = Customer.CustomerId
GROUP BY Customer.Country