SELECT Sum(Invoice.Total) 'Total Sales for 2009'
FROM Invoice
WHERE Invoice.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'