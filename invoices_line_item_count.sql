/* Provide a query that shows all Invoices but includes the # of invoice line items. */

SELECT InvoiceLine.InvoiceId 'Invoice Id', count(InvoiceLine.InvoiceLineId) 'Number of Line Items'
FROM InvoiceLine
GROUP BY InvoiceLine.InvoiceId