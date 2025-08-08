 SQL Task 4 – Aggregations, Grouping & Analysis
This task is part of the **Library Management System** project.
It focuses on aggregate functions (SUM, AVG, MIN, MAX, COUNT) and data grouping using GROUP BY and HAVING.

----

 **Files in this task**
**task4.sql** → Contains all SQL queries for aggregation and grouping.

**Screenshots.docx** → Output screenshots from MySQL Workbench.

----

 ## Queries Performed
 ### Calculate Total Fines Collected
 ```sql
SELECT SUM(FineAmount) AS TotalFines FROM IssuedBooks;
```

### Find the Average Book Price
 ```sql
SELECT AVG(BookPrice) AS AveragePrice FROM Books;
```

### Find the Oldest & Newest Published Books
 ```sql
SELECT MIN(YearPublished) AS OldestBook, MAX(YearPublished) AS LatestBook
FROM Books;
```

### Group Books by Publisher
 ```sql
SELECT Publisher, COUNT(*) AS BooksCount
FROM Books
GROUP BY Publisher;
```

### Publishers with More Than One Book
 ```sql
SELECT Publisher, COUNT(*) AS BooksCount
FROM Books
GROUP BY Publisher
HAVING COUNT(*) > 1;
```

### Total Books Issued per Member
``` sql
SELECT MemberID, COUNT(*) AS BooksIssued
FROM IssuedBooks
GROUP BY MemberID;
```

----

## About Me

Hi, I'm **Sumith Poojary**. This is one of my early SQL projects and a step forward in understanding how databases are structured and used.  
Feel free to explore and suggest improvements!

🔗 GitHub: [sumith999](https://github.com/sumith999)

---

📄 License

This project is shared for educational and learning purposes only.
" > README.md

