/* Provide a query that shows the total sales per country. */

SELECT Invoice.BillingCountry, sum(Invoice.Total) 'Total Sales'
FROM Invoice
GROUP BY Invoice.BillingCountry ORDER BY sum(Invoice.Total) DESC