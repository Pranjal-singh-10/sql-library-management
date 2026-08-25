# Library Management System (SQL Project)

Overview:
This project demonstrates the design and implementation of a relational database for a **Library Management System** using MySQL.  
It includes:
- Database schema (`schema.sql`)
- Sample data (`values.sql`)
- Example queries (`queries.sql`)
- ER diagram (`ERDiagram.png`)

The goal is to showcase **database design, normalization, SQL query writing, and GitHub workflow**.
----------------------------------------------------------------------------------------------------------------

Project Structure:
sql-library-management
├── schema.sql        # Database schema (tables and relationships)
├── values.sql        # Sample data for Students, Authors, Books, BorrowRecords
├── queries.sql       # Example SQL queries (joins, filters, grouping)
├── ERDiagram.png     # Entity Relationship diagram
└── README.md         # Project documentation
----------------------------------------------------------------------------------------------------------------


Code:
## 🛠️ How to Run
1. Create the database:
   ```sql
   CREATE DATABASE library;
   USE library;
2. Run schema.sql to create tables.

3. Run values.sql to insert sample data.

4. Run queries.sql to test queries
----------------------------------------------------------------------------------------------------------------
ER Diagram:
The ER diagram illustrates relationships between tables:

Authors → Books: One author can write multiple books.

Books → BorrowRecords: Each book can be borrowed multiple times.

Students → BorrowRecords: Each student can borrow multiple books.
----------------------------------------------------------------------------------------------------------------
Example Queries:
Here are some useful queries included in queries.sql:
List all students who borrowed books 

sql-
SELECT s.Name, b.Title
FROM BorrowRecords br
JOIN Students s ON br.StudentID = s.Student_id
JOIN Books b ON br.BookID = b.BookID;
Find overdue borrow records

sql-
SELECT s.Name, b.Title, br.ReturnDate
FROM BorrowRecords br
JOIN Students s ON br.StudentID = s.Student_id
JOIN Books b ON br.BookID = b.BookID
WHERE br.Status = 'Overdue';
Show books written by Indian authors

sql-
SELECT b.Title, a.Name
FROM Books b
JOIN Authors a ON b.AuthorID = a.Author_id
WHERE a.Country = 'India';
Count how many books each student borrowed

sql-
SELECT s.Name, COUNT(br.BookID) AS BooksBorrowed
FROM BorrowRecords br
JOIN Students s ON br.StudentID = s.Student_id
GROUP BY s.Name;
Find the most borrowed book

sql-
SELECT b.Title, COUNT(br.BookID) AS TimesBorrowed
FROM BorrowRecords br
JOIN Books b ON br.BookID = b.BookID
GROUP BY b.Title
ORDER BY TimesBorrowed DESC
LIMIT 1;
----------------------------------------------------------------------------------------------------------------
Key Learnings:
Database Design: Normalization, primary keys, foreign keys, relationships.

SQL Queries: Joins, grouping, filtering, aggregate functions.

GitHub Workflow: Organizing repo, committing in stages, adding documentation.
----------------------------------------------------------------------------------------------------------------
Usage:
Clone the repo and run:

bash
git clone https://github.com/Pranjal-singh-10/sql-library-management.git
----------------------------------------------------------------------------------------------------------------
Credits:
Developed by Pranjal Singh  
B.Tech (ECE), IIIT Bhagalpur