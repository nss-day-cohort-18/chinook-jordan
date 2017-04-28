/* Provide a query that shows the most purchased track of 2013. */
SELECT Track.Name 'Track Name', count(InvoiceLine.TrackId) AS TimesPurchased
FROM InvoiceLine JOIN Track USING (TrackId) JOIN Invoice USING (InvoiceId)
WHERE Invoice.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY Track.Name HAVING TimesPurchased > 1
ORDER BY TimesPurchased DESC