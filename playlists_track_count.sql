/* Provide a query that shows the total number of tracks in each playlist. 
The Playlist name should be include on the resulant table. */

SELECT Playlist.Name, count(PlaylistTrack.PlaylistId) 'Tracks on PlayList'
FROM Playlist, PlaylistTrack
WHERE Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY PlaylistTrack.PlaylistId