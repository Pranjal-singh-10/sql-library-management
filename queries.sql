-- 1. List all students who borrowed books
SELECT s.Student_id,s.Name,s.Department,br.BookID,b.Title
FROM Students as s
INNER JOIN BorrowRecords as br 
ON 
s.Student_id=br.StudentID
INNER JOIN Books as b
ON
br.BookID=b.BookID;

-- 2. Show books written by Indian authors
SELECT * FROM Authors WHERE Country="India";

-- 3. Count how many books each student borrowed
SELECT s.Name,s.Student_id,
COUNT( br.BookID)  as No_of_books ,
GROUP_CONCAT(b.Title SEPARATOR ', ') AS BorrowedBooks
FROM Students as s 
INNER JOIN BorrowRecords as br 
ON
s.Student_id=br.StudentID
INNER JOIN Books as b
ON
br.BookID=b.BookId
GROUP BY s.Student_id,s.Name;

-- 4. Find the most borrowed book
SELECT MAX(BookCount) AS MaxBorrowed
FROM (
SELECT COUNT(br.BookID) AS BookCount
FROM BorrowRecords AS br
GROUP BY br.StudentID
) AS counts;

-- 5. List students from the ECE department who borrowed books
SELECT s.Student_id,s.name FROM
Students AS s 
INNER JOIN BorrowRecords AS br
ON s.Student_id=br.StudentID
WHERE s.Department='ECE'
GROUP BY s.Student_id,s.Name;

-- 6. Find authors whose books have been borrowed at least 2 times
SELECT a.Author_id AS AuthorID,
       a.Name AS AuthorName,
       COUNT(br.BookID) AS TimesBorrowed
FROM Authors AS a
INNER JOIN Books AS b ON a.Author_id = b.AuthorID
INNER JOIN BorrowRecords AS br ON b.BookID = br.BookID
GROUP BY a.Author_id, a.Name
HAVING COUNT(br.BookID) >=1;
-- 7. List all books borrowed between two given dates
SELECT b.BookID AS BookID,
       b.Title AS BookTitle,
       br.BorrowDate,
       s.Name AS StudentName
FROM BorrowRecords AS br
INNER JOIN Books AS b ON br.BookID = b.BookID
INNER JOIN Students AS s ON br.StudentID = s.Student_id
WHERE br.BorrowDate BETWEEN '2026-08-01' AND '2026-08-20'
ORDER BY br.BorrowDate;
-- 8. Find students who have never borrowed a book
SELECT s.Name FROM Students as s
LEFT JOIN BorrowRecords as br 
ON
s.Student_id=br.StudentID
WHERE br.StudentID IS NULL;
-- 9. Get the average age of students who borrowed books
SELECT AVG(Age) AS Average_Age FROM Students AS s
LEFT JOIN BorrowRecords AS br 
ON
s.Student_id=br.StudentID
WHERE br.StudentID IS NOT NULL;
-- 10. Find overdue borrow records (students + book titles + return dates)
SELECT s.Name ,b.Title AS BookName,br.ReturnDate
FROM Students AS s
INNER JOIN BorrowRecords AS br
ON
s.Student_id=br.StudentID
INNER JOIN Books AS b
On
br.BookID=b.BookId
WHERE br.Status="Overdue";

