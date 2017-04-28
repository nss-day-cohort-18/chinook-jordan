/* Which country's customers spent the most? */

SELECT Customer.FirstName || ' ' || Customer.LastName 'Customer Name', Invoice.BillingCountry 'Billing Country', sum(Invoice.Total) 'Amount Spent'
FROM Invoice, Customer
WHERE Invoice.CustomerId = Customer.CustomerId
GROUP BY Invoice.BillingCountry ORDER BY sum(Invoice.Total) DESC