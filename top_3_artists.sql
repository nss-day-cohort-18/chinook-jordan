/* Provide a query that shows the top 3 best selling artists. */
SELECT Artist.Name 'Top 3 Selling Artists'
FROM Track, InvoiceLine, Album, Artist
WHERE InvoiceLine.TrackId = Track.TrackId 
AND Track.AlbumId = Album.AlbumId AND Album.ArtistId = Artist.ArtistId
GROUP BY Artist.Name ORDER BY count(InvoiceLine.TrackId) DESC LIMIT 3