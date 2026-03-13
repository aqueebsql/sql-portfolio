-- Netflix Data Analysis

CREATE TABLE shows (
    show_id INT PRIMARY KEY,
    title VARCHAR(100),
    type VARCHAR(20),
    country VARCHAR(50),
    release_year INT,
    duration VARCHAR(20)
);

INSERT INTO shows VALUES
(1, 'Stranger Things', 'TV Show', 'USA', 2016, '3 Seasons'),
(2, 'Extraction', 'Movie', 'USA', 2020, '117 min');

-- Queries
-- Count of movies by country
SELECT country, COUNT(*) AS num_shows
FROM shows
WHERE type='Movie'
GROUP BY country
ORDER BY num_shows DESC;

-- Most common types
SELECT type, COUNT(*) AS count_type
FROM shows
GROUP BY type;

