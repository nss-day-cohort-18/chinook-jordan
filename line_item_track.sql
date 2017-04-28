 /* Provide a query that includes the purchased track name with each invoice line item. */

SELECT InvoiceLine.InvoiceLineId 'Invoice Id',  Track.Name 'Song'
FROM InvoiceLine, Track, Artist, Album
WHERE InvoiceLine.TrackId = Track.TrackId
AND Track.AlbumId = Album.AlbumId
AND Album.ArtistId = Artist.ArtistId