SELECT Customer.FirstName || ' ' || Customer.LastName 'Full Name', Invoice.InvoiceId 'Invoice Id',
Invoice.InvoiceDate 'Invoice Date', Invoice.BillingCountry 'Billing Country'
FROM Customer, Invoice
WHERE Customer.CustomerId = Invoice.InvoiceId
AND Customer.Country IS 'Brazil'