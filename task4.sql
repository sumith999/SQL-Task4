
-- Task 4: Aggregate Functions and Grouping in Library Database

USE Library;

-- In the issuedbooks table I added a column named Fineamount in order to run the sum query

-- 1.Sum of fines collected. 
SELECT SUM(FineAmount) AS TotalFinesCollected FROM IssuedBooks;

-- 2. Count total number of books
SELECT COUNT(*) AS TotalBooks FROM Books;

-- 3. Average fine amount
SELECT AVG(FineAmount) AS AvgFine FROM IssuedBooks;

-- 4. Minimum and maximum year published
SELECT MIN(YearPublished) AS EarliestPublication,
       MAX(YearPublished) AS LatestPublication
FROM Books;

-- 5. Group books by publisher and count
SELECT Publisher, COUNT(*) AS BooksCount FROM Books GROUP BY Publisher;

-- 6. HAVING example: publishers with more than 1 book
SELECT Publisher, COUNT(*) AS BooksCount
FROM Books
GROUP BY Publisher
HAVING COUNT(*) > 1;

-- 7. Total books issued per member
SELECT MemberID, COUNT(*) AS BooksIssued
FROM IssuedBooks
GROUP BY MemberID;




