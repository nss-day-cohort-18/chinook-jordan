SELECT InvoiceLine.InvoiceId 'Invoice Id', count(InvoiceLine.InvoiceLineId) 'Number of Line Items'
FROM InvoiceLine
GROUP BY InvoiceLine.InvoiceId
