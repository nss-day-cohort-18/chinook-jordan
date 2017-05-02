/* Provide a query that shows the top 5 most purchased tracks over all. */
SELECT Track.Name 'Track Name', count(InvoiceLine.TrackId) AS TimesPurchased
FROM InvoiceLine JOIN Track USING (TrackId)
GROUP BY Track.Name ORDER BY TimesPurchased DESC LIMIT 5