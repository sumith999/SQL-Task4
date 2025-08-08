 SQL Task 4 – Aggregations, Grouping & Analysis
This task is part of the Library Management System project (from Task 1 & Task 2).
It focuses on aggregate functions (SUM, AVG, MIN, MAX, COUNT) and data grouping using GROUP BY and HAVING.

----

 Files in this task
task4.sql → Contains all SQL queries for aggregation and grouping.

Screenshots.docx → Output screenshots from MySQL Workbench.

README.md → This documentation file.

----

🛠 Queries Performed
1️⃣ Calculate Total Fines Collected
 sql
SELECT SUM(FineAmount) AS TotalFines FROM IssuedBooks;

2️⃣ Find the Average Book Price
 sql
SELECT AVG(BookPrice) AS AveragePrice FROM Books;

3️⃣ Find the Oldest & Newest Published Books
 sql
SELECT MIN(YearPublished) AS OldestBook, MAX(YearPublished) AS LatestBook
FROM Books;

4️⃣ Group Books by Publisher
 sql
SELECT Publisher, COUNT(*) AS BooksCount
FROM Books
GROUP BY Publisher;

5️⃣ Publishers with More Than One Book
sql
SELECT Publisher, COUNT(*) AS BooksCount
FROM Books
GROUP BY Publisher
HAVING COUNT(*) > 1;

6️⃣ Total Books Issued per Member
sql
SELECT MemberID, COUNT(*) AS BooksIssued
FROM IssuedBooks
GROUP BY MemberID;

----

How to Run the SQL File

1. Open **MySQL Workbench**
2. Connect to your MySQL server (default: `MySQL80`)
3. Open a new SQL tab and paste the contents of `Task1.sql`
4. Run the script to create the database and tables
5. Check the left panel under **Schemas** to verify everything is created

---

 Notes

- Make sure the MySQL service is running before executing the script
- You can create the ER diagram using:  
  `Database > Reverse Engineer` in MySQL Workbench

---

About Me

Hi, I'm **Sumith Poojary**. This is one of my early SQL projects and a step forward in understanding how databases are structured and used.  
Feel free to explore and suggest improvements!

🔗 GitHub: [sumith999](https://github.com/sumith999)

---

📄 License

This project is shared for educational and learning purposes only.
" > README.md

