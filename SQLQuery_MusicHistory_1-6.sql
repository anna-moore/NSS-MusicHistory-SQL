--Task One Query all of the entries in the Genre table
SELECT * FROM Genre ORDER BY [Label];

--Task Two Query all the entries in the Artist table and order by the artist's name.
SELECT * FROM Artist ORDER BY ArtistName;

-- Task Three Write a SELECT query that lists all the songs in the Song table and include the Artist name
SELECT s.Title,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;

-- Task Four Write a SELECT query that lists all the Artists that have a Pop Album
SELECT Artist.ArtistName,
        Genre.Label
    FROM Album
        LEFT JOIN Artist on Album.ArtistId = Artist.Id
        LEFT JOIN Genre on Album.GenreId = Genre.Id
    WHERE GenreId = 7;

-- Task Five Write a SELECT query that lists all the Artists that have a Jazz or Rock Album
SELECT Artist.ArtistName,
        Genre.Label
    FROM Album
        LEFT JOIN Artist on Album.ArtistId = Artist.Id
        LEFT JOIN Genre on Album.GenreId = Genre.Id
    WHERE GenreId = 2 OR GenreId = 4;

-- Task Six Write a SELECT statement that lists the Albums with no songs
SELECT Title
FROM Album
WHERE AlbumLength IS NULL;

SELECT DISTINCT
    al.Id,
    al.Title
FROM Album al
    LEFT JOIN Song s ON al.Id = s.AlbumId
    WHERE s.AlbumId IS NULL
    ORDER BY Title;

--Task Seven Using the INSERT statement, add one of your favorite artists to the Artist table.


