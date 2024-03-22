create database filmfare;
use filmfare;

CREATE TABLE artist (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(255),
    artist_gender VARCHAR(255)
);

INSERT INTO artist (artist_id, artist_name, artist_gender) VALUES
(1, 'Shah Rukh Khan', 'Male'),
(2, 'Deepika Padukone', 'Female'),
(3, 'Amitabh Bachchan', 'Male'),
(4, 'Priyanka Chopra', 'Female'),
(5, 'Aamir Khan', 'Male'),
(6, 'Shah Rukh Khan', 'Male'), -- Duplicate for the character in "Kabhi Khushi Kabhie Gham"
(7, 'Aamir Khan', 'Male'), -- Duplicate for the character in "PK"
(8, 'Rani Mukerji', 'Female'),
(9, 'Amitabh Bachchan', 'Male'), -- Duplicate for the character in "Andhadhun"
(10, 'Vidya Balan', 'Female'),
(11, 'Ranbir Kapoor', 'Male'),
(12, 'Deepika Padukone', 'Female'), -- Duplicate for the character in "Chennai Express"
(13, 'Ayushmann Khurrana', 'Male'),
(14, 'Vidya Balan', 'Female'), -- Duplicate for the character in "Kahaani"
(15, 'Shahid Kapoor', 'Male'),
(16, 'Akshay Kumar', 'Male'),
(17, 'Vicky Kaushal', 'Male'),
(18, 'Richa Chadha', 'Female'),
(19, 'Kangana Ranaut', 'Female'),
(20, 'Irrfan Khan', 'Male'),
(21, 'Rajkummar Rao', 'Male');

select * from artist;
desc artist;

CREATE TABLE director (
    director_id INT PRIMARY KEY,
    director_name VARCHAR(255),
    director_place VARCHAR(255)
);
INSERT INTO director (director_id, director_name, director_place) VALUES
(1, 'Karan Johar', 'Mumbai'),
(2, 'Rajkumar Hirani', 'Nagpur'),
(3, 'Sanjay Leela Bhansali', 'Bhuleshwar'),
(4, 'Ashutosh Gowariker', 'Mumbai'),
(5, 'Zoya Akhtar', 'Mumbai'),
(6, 'Vikas Bahl', 'Mumbai'),
(7, 'Nitesh Tiwari', 'Chhattisgarh'),
(8, 'Anurag Basu', 'Bhagalpur'),
(9, 'Sriram Raghavan', 'Mumbai'),
(10, 'Sujoy Ghosh', 'Kolkata'),
(11, 'Vishal Bhardwaj', 'Bijnor'),
(12, 'Anubhav Sinha', 'Allahabad'),
(13, 'Amit Ravindernath Sharma', 'Delhi'),
(14, 'Nishikant Kamat', 'Mumbai'),
(15, 'Meghna Gulzar', 'Mumbai'),
(16, 'Farhan Akhtar', 'Mumbai');
desc director;

CREATE TABLE movie (
    film_id INT PRIMARY KEY,
    film_name VARCHAR(255),
    film_year INT,
    film_language VARCHAR(255),
    director_id INT,
    CONSTRAINT fk_director_id FOREIGN KEY (director_id) REFERENCES director (director_id)
);
desc movie;
INSERT INTO movie (film_id, film_name, film_year, film_language, director_id) VALUES
(1, 'Dilwale Dulhania Le Jayenge', 1995, 'Hindi', 1),
(2, '3 Idiots', 2009, 'Hindi', 2),
(3, 'Padmaavat', 2018, 'Hindi', 3),
(4, 'Lagaan', 2001, 'Hindi', 4),
(5, 'Kabhi Khushi Kabhie Gham', 2001, 'Hindi', 1),
(6, 'PK', 2014, 'Hindi', 2),
(7, 'Gully Boy', 2019, 'Hindi', 5),
(8, 'Queen', 2013, 'Hindi', 6),
(9, 'Dangal', 2016, 'Hindi', 7),
(10, 'Barfi!', 2012, 'Hindi', 8),
(11, 'Bajirao Mastani', 2015, 'Hindi', 3),
(12, 'Chennai Express', 2013, 'Hindi', 1),
(13, 'Andhadhun', 2018, 'Hindi', 9),
(14, 'Kahaani', 2012, 'Hindi', 10),
(15, 'Haider', 2014, 'Hindi', 11),
(16, 'Article 15', 2019, 'Hindi', 12),
(17, 'Badhaai Ho', 2018, 'Hindi', 13),
(18, 'Drishyam', 2015, 'Hindi', 14),
(19, 'Raazi', 2018, 'Hindi', 15),
(20, 'Dil Chahta Hai', 2001, 'Hindi', 16);


CREATE TABLE casting (
    artist_id INT,
    film_id INT,
    character_name VARCHAR(255),
    CONSTRAINT fk_artist_id FOREIGN KEY (artist_id) REFERENCES artist (artist_id),
    CONSTRAINT fk_film_id FOREIGN KEY (film_id) REFERENCES movie (film_id)
);

desc casting;
-- Casting for the movie "Dilwale Dulhania Le Jayenge"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(1, 1, 'Raj Malhotra'),
(2, 1, 'Simran Singh');

-- Casting for the movie "3 Idiots"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(3, 2, 'Rancho');

-- Casting for the movie "Padmaavat"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(4, 3, 'Alauddin Khilji');

-- Casting for the movie "Lagaan"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(5, 4, 'Bhuvan');

-- Casting for the movie "Kabhi Khushi Kabhie Gham"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(6, 5, 'Rahul Raichand');

-- Casting for the movie "PK"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(7, 6, 'PK');

-- Casting for the movie "Gully Boy"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(8, 7, 'Murad Ahmed');

-- Casting for the movie "Queen"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(9, 8, 'Rani Mehra');

-- Casting for the movie "Dangal"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(10, 9, 'Mahavir Singh Phogat');

-- Casting for the movie "Barfi!"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(11, 10, 'Murphy "Barfi" Johnson');

-- Casting for the movie "Bajirao Mastani"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(12, 11, 'Mastani');

-- Casting for the movie "Chennai Express"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(13, 12, 'Meenamma Lochni');

-- Casting for the movie "Andhadhun"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(14, 13, 'Akash Chauhan');

-- Casting for the movie "Kahaani"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(15, 14, 'Vidya Bagchi');

-- Casting for the movie "Haider"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(16, 15, 'Haider Meer');

-- Casting for the movie "Article 15"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(17, 16, 'Ayan Ranjan');

-- Casting for the movie "Badhaai Ho"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(18, 17, 'Nakul Kaushik');

-- Casting for the movie "Drishyam"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(19, 18, 'Vijay Salgaonkar');

-- Casting for the movie "Raazi"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(20, 19, 'Sehmat Khan');

-- Casting for the movie "Dil Chahta Hai"
INSERT INTO casting (artist_id, film_id, character_name) VALUES
(21, 20, 'Aakash Malhotra');



CREATE TABLE review (
    film_id INT,
    stars INT,
    CONSTRAINT fk_review_film_id FOREIGN KEY (film_id) REFERENCES movie (film_id)
);

INSERT INTO review (film_id, stars) VALUES
(1, 4),
(2, 5),
(3, 4),
(4, 4),
(5, 5),
(6, 3),
(7, 5),
(8, 4),
(9, 5),
(10, 4),
(11, 5),
(12, 4),
(13, 5),
(14, 4),
(15, 5),
(16, 4),
(17, 4),
(18, 5),
(19, 5),
(20, 5);

desc review;



-- sub queries --



-- Find Artists Who Have Acted in Movies Directed by Karan Johar:
SELECT DISTINCT artist_name
FROM artist
WHERE artist_id IN (
    SELECT artist_id
    FROM casting
    WHERE film_id IN (
        SELECT film_id
        FROM movie
        WHERE director_id = (SELECT director_id FROM director WHERE director_name = 'Karan Johar')
    )
);


-- Find Movies Where at Least One Actor Has a Name Starting with 'A':
SELECT film_name
FROM movie
WHERE EXISTS (
    SELECT 1
    FROM casting
    INNER JOIN artist ON casting.artist_id = artist.artist_id
    WHERE casting.film_id = movie.film_id
    AND artist.artist_name LIKE 'A%'
);

-- Find Movies with the Highest Rating:
SELECT film_name
FROM movie
WHERE (
    SELECT MAX(stars)
    FROM review
    WHERE review.film_id = movie.film_id
) = 5;


-- Find Directors Who Have Directed Movies Released Before 2010:
SELECT director_name
FROM director
WHERE EXISTS (
    SELECT 1
    FROM movie
    WHERE movie.director_id = director.director_id
    AND film_year < 2010
);

-- Find Artists in the Movie "Dilwale Dulhania Le Jayenge":
SELECT artist_name
FROM artist
WHERE artist_id IN (SELECT artist_id FROM casting WHERE film_id = (SELECT film_id FROM movie WHERE film_name = 'Dilwale Dulhania Le Jayenge'));






-- Joins-- 



-- 1. retrieve movie details along with the corresponding director names from the provided database:
SELECT movie.film_name, movie.film_year, movie.film_language, director.director_name
FROM movie
INNER JOIN director ON movie.director_id = director.director_id;


-- 2. retrieves all movies and their review ratings
SELECT *
FROM movie
LEFT JOIN review ON movie.film_id = review.film_id

UNION

SELECT *
FROM movie
RIGHT JOIN review ON movie.film_id = review.film_id;


-- 3. all artists, along with the characters they have played in movies.  

SELECT artist.artist_name, casting.character_name
FROM artist
LEFT JOIN casting ON artist.artist_id = casting.artist_id;

-- 4. all movies along with their details and the corresponding directors
SELECT *
FROM movie
NATURAL JOIN director;



select * from review;








-- queries--


-- Retrieve movies released in a specific year:
SELECT film_name, film_language
FROM movie
WHERE film_year = 2018;
 

-- Retrieve all movies and their directors:
SELECT movie.film_name, movie.film_year, director.director_name
FROM movie, director
WHERE movie.director_id = director.director_id;

-- retrieve all the male actors form the table artist
SELECT artist_name
FROM artist
WHERE artist_gender = 'Male';

-- Retrieve directors from Mumbai
SELECT director_name
FROM director
WHERE director_place = 'Mumbai';





