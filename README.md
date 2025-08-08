&nbsp;SQL Task 4 – Aggregations, Grouping \& Analysis

This task is part of the Library Management System project (from Task 1 \& Task 2).

It focuses on aggregate functions (SUM, AVG, MIN, MAX, COUNT) and data grouping using GROUP BY and HAVING.



&nbsp;Files in this task

task4.sql → Contains all SQL queries for aggregation and grouping.



Screenshots.docx → Output screenshots from MySQL Workbench.



README.md → This documentation file.



🛠 Queries Performed

1️⃣ Calculate Total Fines Collected

sql

Copy

Edit

SELECT SUM(FineAmount) AS TotalFines FROM IssuedBooks;

2️⃣ Find the Average Book Price

sql

Copy

Edit

SELECT AVG(BookPrice) AS AveragePrice FROM Books;

3️⃣ Find the Oldest \& Newest Published Books

sql

Copy

Edit

SELECT MIN(YearPublished) AS OldestBook, MAX(YearPublished) AS LatestBook

FROM Books;

4️⃣ Group Books by Publisher

sql

Copy

Edit

SELECT Publisher, COUNT(\*) AS BooksCount

FROM Books

GROUP BY Publisher;

5️⃣ Publishers with More Than One Book

sql

Copy

Edit

SELECT Publisher, COUNT(\*) AS BooksCount

FROM Books

GROUP BY Publisher

HAVING COUNT(\*) > 1;

6️⃣ Total Books Issued per Member

sql

Copy

Edit

SELECT MemberID, COUNT(\*) AS BooksIssued

FROM IssuedBooks

GROUP BY MemberID;



📌 Notes

Database used: Library



Tables involved: Books, Members, IssuedBooks



Software: MySQL Workbench 8.0







&nbsp;Author

Sumith Poojary

GitHub: sumith999

