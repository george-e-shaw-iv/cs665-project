SET @userID := 1;
SELECT
  track.title AS track_title,
  album.name AS album_name,
  artist. `name` AS artist_name
FROM
  library
  INNER JOIN track ON track.id = library.track_id
  INNER JOIN album ON album.id = track.album_id
  INNER JOIN created ON created.track_id = track.id
  INNER JOIN artist ON artist.id = created.artist_id
WHERE
  library.user_id = @userID;
