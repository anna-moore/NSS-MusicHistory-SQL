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
INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('SQL', 2020);

--Task Eight Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT  INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) 
VALUES ('The SQL Album', '11/14/2020', 2268, 'Def Jam', 28, 15);

--Task Nine Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Intro to SQL', 100, '12/03/2021', 15, 28, 23);

--Task Ten Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
SELECT s.Title AS SongTitle, al.Title AS AlbumTitle, ar.ArtistName
  FROM song s
       join Album al ON s.AlbumId = al.id
       join artist ar ON s.ArtistId = ar.id
 WHERE s.Title = 'Intro to SQL' 
       or s.Title = 'Legs'
       or ar.ArtistName = 'Black Flag'

--Task Eleven Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT count(s.id) AS NumOfSong, al.Title
  FROM  song s LEFT JOIN album al on s.AlbumId = al.id
GROUP BY al.Title

--Task Twelve Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--Task Thirteen Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.