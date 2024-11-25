INSERT INTO genres (genre_name)
	VALUES ('Jazz'), ('Rock'), ('Pop');

INSERT INTO artists (artist_name)
	VALUES('Frank Sinatra'),('Lui Armstrong'),
			('Rolling Stones'),('AC/DC'),
			('Beatles'),('Backstreet Boys');

INSERT INTO  (genres_id, artists_id)
	VALUES(1,1), (1,2),
		(2,3), (2,4),
		(3,5), (3,6);

INSERT INTO albums (album_name, album_date)
	VALUES('Close to You',1957), ('Where Are You?',1957),
		('Hello Louis - The Hit Years',1963), ('Spotlight on Louis Armstrong',1974),
		('Black and blue',1974), ('Let it bleed',1980),
		('High Voltage',1976), ('Back in Black',1980),
		('Revolver',1963), ('Please Please Me',1963)
		('Never Gone',2019), ('Millennium',1999),


INSERT INTO albums_artists (albums_id, artists_id)
	values(1,1), (2,1), (3,2), (4,2), (5,3), (6,3), (7,4), (8,4),
		(9,5), (10,5), (11,6), (12,6);

INSERT INTO tracks(track_name, track_duration, album_id)
	values('P.S. I Love You', 170, 1), ('I Couldn Sleep a Wink Last Night', 187, 1),
		('I Cover the Waterfront', 180, 2), ('Laura', 154, 2),
		('Hello, Dolly!', 121, 3), ('Hey Look Me Over', 273, 3),
		('On The Sunny Side Of The Street', 411, 4), ('Dream A Little Dream Of Me', 198, 4),
		('Memory Motel', 282, 5), ('Crazy Mama', 193, 5),
		('Midnight Rambler', 419, 6), ('Monkey Man', 253, 6),
		('The Jack', 400, 7), ('Live Wire', 250, 7),
		 ('Hells Bells', 246, 8), ('Shake a Leg', 311, 8),
		('Love You To', 213, 9), ('Yellow Submarine', 508, 9),
		 ('Misery', 311, 10), ('Ask Me Why', 394, 10),
		('Just Want You to Know', 260, 11), ('Siberia', 448, 11),
		('I want it that way', 413, 12), ('Back to your heart', 429, 12);

INSERT INTO collections (collection_name, collection_date)
	values('Collection_1', 1957), ('Collection_2', 1963),
		('Collection_3', 1974), ('Collection_4', 2076),
		('Collection_5', 1980), ('Collection_6', 1999),
		('Collection_7', 2005);

INSERT INTO tracks_collections (track_id, collection_id)
	values(1,1), (2,1), (3,2), (4,3) ,(5,3), (6,5), (7,4), (8,5),
		(9,2), (10,2), (11,7), (12,6);