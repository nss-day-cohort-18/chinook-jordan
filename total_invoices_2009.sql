SELECT Count(Invoice.InvoiceDate) 'Total Invoice(s) for Year 2009'
FROM Invoice
WHERE Invoice.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
