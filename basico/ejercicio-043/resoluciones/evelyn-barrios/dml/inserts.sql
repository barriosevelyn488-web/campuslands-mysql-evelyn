

-- Limpiar datos existentes para asegurar un estado inicial consistente.
TRUNCATE TABLE peliculas_miedo;

-- Insertar películas de miedo con diferentes estados
INSERT INTO peliculas_miedo (title, release_year, director, genre, rating, status) VALUES
('El Exorcista', 1973, 'William Friedkin', 'Supernatural', 'R', 'Disponible'),
('Psicosis', 1960, 'Alfred Hitchcock', 'Slasher', 'PG', 'Disponible'),
('El Resplandor', 1980, 'Stanley Kubrick', 'Supernatural', 'R', 'Alquilada'),
('Alien, el octavo pasajero', 1979, 'Ridley Scott', 'Sci-Fi Horror', 'R', 'Disponible'),
('La Noche de Halloween', 1978, 'John Carpenter', 'Slasher', 'R', 'Mantenimiento'),
('Hereditary', 2018, 'Ari Aster', 'Supernatural', 'R', 'Disponible'),
('Get Out', 2017, 'Jordan Peele', 'Psychological Horror', 'R', 'Alquilada'),
('The Blair Witch Project', 1999, 'Daniel Myrick', 'Found Footage', 'R', 'Archivada'),
('It', 2017, 'Andy Muschietti', 'Supernatural', 'R', 'Disponible'),
('Saw', 2004, 'James Wan', 'Slasher', 'R', 'Disponible'),
('El Conjuro', 2013, 'James Wan', 'Supernatural', 'R', 'Disponible'),
('Un Lugar en Silencio', 2018, 'John Krasinski', 'Sci-Fi Horror', 'PG-13', 'Alquilada'),
('Babadook', 2014, 'Jennifer Kent', 'Psychological Horror', 'R', 'Disponible'),
('REC', 2007, 'Jaume Balagueró', 'Found Footage', 'R', 'Mantenimiento'),
('Poltergeist', 1982, 'Tobe Hooper', 'Supernatural', 'PG', 'Disponible');