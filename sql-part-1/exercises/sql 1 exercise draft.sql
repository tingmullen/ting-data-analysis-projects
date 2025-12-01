-- A
-- Question 1
SELECT TOP 1000 *
FROM BooksDB.dbo.books;

-- Question 2
SELECT COUNT(title)
FROM BooksDB.dbo.books;
-- Result: 10000

-- Question 3
SELECT COUNT(*)
FROM BooksDB.dbo.books
WHERE original_publication_year < 1800;
-- Result: 125

-- Question 4
SELECT DISTINCT authors
FROM BooksDB.dbo.books;


-- Question 5
SELECT COUNT(*)
FROM BooksDB.dbo.books
WHERE language_code = 'eng' OR language_code LIKE 'en-%';
-- Result: 8726

-- Question 6
SELECT COUNT(original_title)
FROM BooksDB.dbo.books
WHERE original_publication_year BETWEEN 1914 AND 1921;
-- Result: 38

-- B
-- Question 1: Select top 1000 ordered by tag_id
SELECT TOP 1000 *
FROM BooksDB.dbo.book_tags
ORDER BY tag_id;

-- Question 2: Count books grouped by tag_id
SELECT tag_id, COUNT(goodreads_book_id)
FROM BooksDB.dbo.book_tags
GROUP BY tag_id;

-- Question 3: Alias the count column
SELECT tag_id, COUNT(goodreads_book_id) AS Tagged_Book_Count
FROM BooksDB.dbo.book_tags
GROUP BY tag_id;

-- C
-- Question 1: Select top 1000 in descending order by rating
SELECT TOP 1000 *
FROM BooksDB.dbo.ratings
ORDER BY rating DESC;

-- Question 2: Count distinct users who rated less than 2
SELECT COUNT(DISTINCT user_id)
FROM BooksDB.dbo.ratings
WHERE rating < 2;

-- Question 3: Count (sum) of ratings 4 or higher
SELECT COUNT(book_id)
FROM BooksDB.dbo.ratings
WHERE rating >= 4;
-- Result: 650327

-- D
-- Question 1: Select tags containing 'mystery'
SELECT *
FROM BooksDB.dbo.tags
WHERE tag_name LIKE '%mystery%';

-- Question 2: Run the query below. In your own words, what is it returning?
-- SELECT *
   -- FROM BooksDB.dbo.tags
   -- WHERE tag_name < 'd' AND tag_name >= 'c';
-- This returns all tag records where the tag_name begins with the letter 'c'."

-- E
-- Question 1: Count books to read per user, ordered by user_id ASC
SELECT user_id, COUNT(book_id) AS "Total Books To Read"
FROM BooksDB.dbo.to_read
GROUP BY user_id
ORDER BY user_id ASC;

-- Question 2: Count books to read per user, ordered by the count DESC
SELECT user_id, COUNT(book_id) AS "Total Books To Read"
FROM BooksDB.dbo.to_read
GROUP BY user_id
ORDER BY "Total Books To Read" DESC;




