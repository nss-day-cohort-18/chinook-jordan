SELECT Count(Invoice.InvoiceDate) 'Total Invoice(s) for Year 2011'
FROM Invoice
WHERE Invoice.InvoiceDate BETWEEN '2011-01-01' AND '2011-12-31'