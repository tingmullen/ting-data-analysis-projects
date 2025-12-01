-- Question 1: Select the top 1000 rows
SELECT TOP 1000 *
FROM BooksDB.dbo.books;


-- Question 2: Count the number of titles
SELECT COUNT(title)
FROM BooksDB.dbo.books;

-- Question 3: Count (sum) of books with rating 4 or higher
SELECT COUNT(book_id)
FROM BooksDB.dbo.ratings
WHERE rating >= 4;